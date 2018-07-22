
/* A simple One-Pass Compiler */
/* global.h */

#include <stdio.h>  /* include declarations for i/o routines */
#include <ctype.h>  /* ... and for character test routines */
#include <stdlib.h> /*and for some standard routines, such as exit*/
#include <string.h> /* ... and for string routines */
#include <limits.h>

#define BSIZE  128  /* buffer size */
#define NONE   -1
#define EOS    '\0'

#define NUM    256
#define DIV    257
#define MOD    258
#define ID     259
#define DONE   260

extern int tokenval;   /*  value of token attribute */  
extern int lineno;

// A structure to represent a stack
struct GenData
{
	int value;
	char character;
	int keyword;
};
struct Stack
{
    int top;
    unsigned capacity;
    struct GenData* array;
};

struct Stack* stack;

struct entry {  /*  form of symbol table entry  */
  char *lexptr; 
  int  token;    
  int value;
};

int e=0;
extern struct entry symtable[];  /* symbol table  */
void emit (int t, int tval);  /*  generates output  */
void error(char* m);  /* generates all error messages  */

//-----------------------------------------------------

/* stack */


 
// function to create a stack of given capacity. It initializes size of
// stack as 0
struct Stack* createStack(unsigned capacity)
{
    struct Stack* stack = (struct Stack*) malloc(sizeof(struct Stack));
    stack->capacity = capacity;
    stack->top = -1;
    stack->array = (struct GenData*) malloc(stack->capacity * sizeof(int));
    return stack;
}
 
// Stack is full when top is equal to the last index
int isFull(struct Stack* stack)
{   return stack->top == stack->capacity - 1; }
 
// Stack is empty when top is equal to -1
int isEmpty(struct Stack* stack)
{   return stack->top == -1;  }
 
// Function to add an item to stack.  It increases top by 1
void push(struct Stack* stack, struct GenData item)
{
    if (isFull(stack))
        return;
    stack->array[++stack->top] = item;
    //printf("%d pushed to stack\n", item);
}

void printStack(struct Stack* stack){
	int i;
	for( i = stack->top ; i >= 0 ; i-- ){
		struct GenData item = *(stack->array+i);
		if( item.character != -1 ){
			printf("%c\n",item.character);
		}else if( item.keyword != 0 ){
			if( item.keyword == MOD ){
				printf("MOD\n");
			}else{
				printf("DIV\n");
			}
		}else{
			printf("%d\n",item.value);
		}
	}
}
// Function to remove an item from stack.  It decreases top by 1
struct GenData pop(struct Stack* stack)
{
    if (isEmpty(stack)){
    	struct GenData item;
    	item.value = INT_MIN;
    	item.character = NONE;
    	item.keyword = 0;
		return item;
	}
    return stack->array[stack->top--];
}


//-----------------------------------------------------

/* lexer.c */

char lexbuf[BSIZE];
int  lineno = 1;
int  tokenval = NONE;

int lexan (){  /*  lexical analyzer  */
  int t;
  while(1) {
    t = getchar ();
    if (t == ' ' || t == '\t')
      ;  /*  strip out white space  */
    else if (t == '\n')
      lineno = lineno + 1;
    else if (isdigit (t)) {  /*  t is a digit  */
      ungetc(t, stdin);
      scanf("%d", &tokenval);
      return NUM;
    }
    else if (isalpha(t)) {  /*  t is a letter */
      int p, b = 0;
      while (isalnum(t)) {  /* t is alphanumeric  */
        lexbuf [b] = t; 
        t = getchar ();
        b = b + 1;
        if (b >= BSIZE)
          error("compiler error");
      }
      lexbuf[b] = EOS;
      if (t != EOF)
        ungetc(t, stdin);
      p = lookup (lexbuf);
      if (p == 0)
        p = insert (lexbuf, ID);
      tokenval = p;
//      printf("%s\n",lexbuf);
      if(strcmp(lexbuf,"end") == 0){
		return DONE;
      }
      return symtable[p].token;
    }
    else if (t == EOF)
      return DONE;
    else {
      tokenval = NONE;
      return t;
    }
  }
}


//-----------------------------------------------------

/* parser.c -- without the optimizations */

int lookahead;

void match(int);
void start(), list(), expr(), moreterms(), term(), morefactors(), factor();
int eval();

void parse()  /*  parses and translates expression list  */
{
  e=0;
  lookahead = lexan();
  start();
}

void start ()
{
  /* Just one production for start, so we don't need to check lookahead */
  list(); match(DONE);
  exit(0);
}

void list()
{
  if (lookahead == '(' || lookahead == ID || lookahead == NUM) {
    int value = statement();
    if( e == 0 )
		printf("%d\n",value);
	e=0;
	match(';');
	if(e){
		while(lookahead!=(int)';'){
	    	lookahead=getchar();
	    	if(lookahead==EOF){
	    		lookahead=DONE;
	    		break;
	    	}
		}
		if(lookahead!=DONE)
			lookahead=lexan();
		e=0;	
	}
	list();
  }
  else {
    /* Empty */
  }
}

int statement(){
	if( lookahead == ID ){
		int idIndex = lookup(lexbuf);
		match(ID);
		match('=');
		expr();
		int value = eval();
		symtable[idIndex].value = value;
		return value;
	}else{
		expr();
		int value = eval();
		return value;
	}
}

int eval(){
	struct Stack* temp1 = createStack(100);
	struct Stack* temp2 = createStack(100);
	while( !isEmpty(stack) ){
		struct GenData item = pop(stack);
		push(temp1,item);
	}
	while( !isEmpty(temp1) ){
		struct GenData item = pop(temp1);
		if( item.character == -1 && item.keyword == 0 ){
			push(temp2,item);
		}else if( item.character != -1 ){
			int operand2 = pop(temp2).value;
			int operand1 = pop(temp2).value;
			int result;
			switch(item.character){
				case '+':
					result = operand1 + operand2;
					break;
				case '-':
					result = operand1 - operand2;
					break;
				case '*':
					result = operand1 * operand2;
					break;
				case '/':
					if( operand2 == 0 ){
						error("division by zero!");
					}else{
						result = operand1 / operand2;
					}
					break;
			}
			struct GenData resultItem;
			resultItem.value = result;
			resultItem.character = NONE;
			resultItem.keyword = 0;
			push(temp2,resultItem);
		}else if( item.keyword != 0 ){
			int result;
			switch( item.keyword ){
				int operand2 = pop(temp2).value;
				int operand1 = pop(temp2).value;
				
				case MOD :
					result = operand1 % operand2;
					break;
				case DIV :
					if( operand2 == 0 ){
						error("division by zero!");
					}else{
						result = operand1 / operand2;
					}
					break;
			}
			struct GenData resultItem;
			resultItem.value = result;
			resultItem.character = NONE;
			resultItem.keyword = 0;
			push(temp2,resultItem);
		}
	}
	
	int value = pop(temp2).value;
	return value;
}

void expr ()
{
  /* Just one production for expr, so we don't need to check lookahead */
  term(); moreterms();
}

void moreterms()
{
  if (lookahead == '+') {
    match('+'); term(); emit('+', tokenval); moreterms();
  }
  else if (lookahead == '-') {
    match('-'); term(); emit('-', tokenval); moreterms();
  }
  else {
    /* Empty */
  }
}

void term ()
{
  /* Just one production for term, so we don't need to check lookahead */
  factor(); morefactors();
}

void morefactors ()
{
  if (lookahead == '*') {
    match('*'); factor(); emit('*', tokenval); morefactors();
  }
  else if (lookahead == '/') {
    match('/'); factor(); emit('/', tokenval); morefactors();
  }
  else if (lookahead == DIV) {
    match(DIV); factor(); emit(DIV, tokenval); morefactors();
  }
  else if (lookahead == MOD) {
    match(MOD); factor(); emit(MOD, tokenval); morefactors();
  }
  else {
    /* Empty */
  }
}

void factor ()
{
  if (lookahead == '(') {
    match('('); expr(); match(')');
  }
  else if (lookahead == ID) {
    int id_lexeme = tokenval;
    match(ID);
    emit(ID, id_lexeme);
  }
  else if (lookahead == NUM) {
    int num_value = tokenval;
    match(NUM);
    emit(NUM, num_value);
  }
  else
    error("syntax error in factor");

}

void match(int t)
{
  if (lookahead == t){
  	if( lookahead != DONE )
		lookahead = lexan();
  }else{
    error ("syntax error in match");

	}
}

//-----------------------------------------------------

/* emitter.c */
void emit (int t, int tval)  /*  generates output  */
{
	struct GenData item ;
	
  switch(t) {
  case '+' : case '-' : case '*' : case '/':
  	item.value = 0;
  	item.character = (char)t;
  	item.keyword = 0;
  	push(stack, item);
    //printf("%c\n", t); 
	break;
  case DIV:
  	item.value = 0;
  	item.character = NONE;
  	item.keyword = DIV;
  	push(stack, item);
//    printf("DIV\n"); 
	break; 
  case MOD:
  	item.value = 0;
  	item.character = NONE;
  	item.keyword = MOD;
  	push(stack, item);
//    printf("MOD\n");
	break;
  case NUM:
  	item.value = tval;
  	item.character = NONE;
  	item.keyword = 0;
  	push(stack, item);
//    printf("%d\n", tval); 
	break;
  case ID:
  	item.value = symtable[tval].value;
  	item.character = NONE;
  	item.keyword = 0;
  	push(stack, item);
//    printf("%s\n", symtable[tval].lexptr); 
	break; 
  default:     
    printf("token %d, tokenval %d\n", t, tval);
  }
}

//-----------------------------------------------------

/* symbol.c */

#define STRMAX 999  /*  size of lexemes array  */
#define SYMMAX 100  /*  size of symbol table */

char lexemes[STRMAX];
int  lastchar = - 1;  /*  last used position in lexemes   */
struct entry symtable[SYMMAX];
int lastentry = 0;    /*  last used position in symtable  */

int lookup(char *s)      /*  returns position of entry for s */
{
  int p;
  for (p = lastentry; p > 0; p = p - 1)
    if (strcmp(symtable[p].lexptr, s) == 0)
      return p;
  return 0;
}

int insert(char *s, int tok)/*returns position of entry for s*/
{
  int len;
  len = strlen(s);  /*  strlen computes length of s     */
  if (lastentry + 1 >= SYMMAX)
    error ("symbol table full");
  if (lastchar + len + 1 >= STRMAX)
    error ("lexemes array full");
  lastentry = lastentry + 1;
  symtable[lastentry].token = tok;
  symtable[lastentry].lexptr = &lexemes[lastchar + 1];
  symtable[lastentry].value = 0;
  lastchar = lastchar + len + 1;
  strcpy(symtable[lastentry].lexptr, s);
  return lastentry;
}

//-----------------------------------------------------

/* init.c */

struct entry keywords[] = {
  { "div", DIV },
  { "mod", MOD, },
  { 0,     0 },
  { "end", DONE }
};

void init()  /*  loads keywords into symtable  */
{
	stack = createStack(100);
  struct entry *p;
  for (p = keywords; p->token; p++)
    insert(p->lexptr, p->token);
}


//-----------------------------------------------------

/* error.c */


void error(char* m)  /* generates all error messages  */
{
  fprintf(stderr, "line %d: %s\n", lineno, m);
        e=1;
  while(lookahead!=(int)';'){
    	lookahead=getchar();
    	if(lookahead==EOF){
    		lookahead=DONE;
    		break;
    	}
	}
	parse();
  //exit(EXIT_FAILURE);  /*  unsuccessful termination  */
}


//-----------------------------------------------------

/* main.c */


int main( )
{
  init();
  parse();
  exit(0);    /*  successful termination  */
}



