import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class GrammarGenerator {

    private static GrammarGenerator instance;
    private File file;

    private GrammarGenerator(File file) {
        this.file = file;
    }

    public static GrammarGenerator getInstance(File file) {
        if (instance == null) {
            instance = new GrammarGenerator(file);
            return instance;
        } else
            return instance;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public ArrayList<Grammar> generate() {
        ArrayList<Grammar> grammars = new ArrayList<>();
        try {
            FileReader reader = new FileReader(file);

            char[] sequence = new char[(int) file.length()];
            try {
                reader.read(sequence);

                String allLines = "";
                for (int i = 0; i < sequence.length; i++) {
                    if (sequence[i] != 13 && sequence[i] != 10) {
                        allLines += sequence[i];
                    }
                }
                System.out.println(allLines);
                int numOfGrammars = 0;
                for (String grammarInfo : allLines.split("-----")) {
                    HashMap<String, ArrayList<String>> products = new HashMap<>();
                    ArrayList<String> variables = new ArrayList<>();
                    ArrayList<String> terminals = new ArrayList<>();
                    String startVariable = "";
                    int indexOfPart = 0;
                    for (String info : grammarInfo.split("#")) {
                        switch (indexOfPart) {
                            case 0:
                                for (String variable : info.split(","))
                                    variables.add(variable);
                                break;
                            case 1:
                                for (String terminal : info.split(","))
                                    terminals.add(terminal);
                                break;
                            case 2:
                                startVariable = info ;
                                break ;
                            case 3:
                                for( String product : info.split(";")){
                                    String key = "" ;
                                    int index = 0 ;
                                    ArrayList<String> oneRow = new ArrayList<>() ;
                                    for( String part : product.split(":")){
                                        switch ( index ){
                                            case 0 :
                                                key = part ;
                                                break;
                                            case 1 :
                                                for( String rightHand : part.split("/")){
                                                    oneRow.add(rightHand);
                                                }
                                                break ;
                                        }
                                        index++ ;
                                    }

                                    products.put(key , oneRow ) ;
                                }

                        }

                        indexOfPart++;
                    }

                    Grammar grammar = new Grammar(variables , terminals , startVariable , products);

                    grammars.add(grammar);
                    numOfGrammars++;

                }
            } catch (IOException e) {
                // TODO Auto-generated catch block
                System.out.println("Opennig file error");
            }
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            System.out.println("File Read Error");
        }

        return grammars;
    }
}
