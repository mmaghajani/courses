
/**
 * Write a description of class Book here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Book
{
    // The fields.
    private String author;
    private String title;
    private int pages ;
    private String refNumber ;
    private int borrowed ;
    private boolean courseText ;
    
    /**
       * Set the author and title fields when this object
         * is constructed.
           */
    public Book(String bookAuthor, String bookTitle , int pageNum ,
    boolean courseText)
    {
        author = bookAuthor;
        title = bookTitle;
        pages = pageNum ;
        refNumber = "" ;
        borrowed = 0 ;
        this.courseText = courseText ;
    }
    // Add the methods here...
    
    public String getAuthor(){
        return author ;
    }
    
    public String getTitle(){
        return title ;
    }
    
    public int getPages(){
        return pages ;
    }
    
    public void printAuthor(){
        System.out.println( author ) ;
    }
    
    public void printTitle(){
        System.out.println( title ) ;
    }
    
    public void prinDdetails(){
        System.out.println( "Author : " + author + "Title : " +
        title + "Pages : " + pages + "BorrowedNum : " + borrowed ) ;
    }
    
    public void setRefNumber( String refNumber ){
        this.refNumber = refNumber ;
    }
    
    public String getRefNumber(){
        return refNumber ;
    }    
    
    public void borrow(){
        borrowed++ ;
    }
    
    public int getBorrowed(){
        return borrowed ;
    }
    
    public return isCourseTest(){
        return courseText ;
    }
    
}
