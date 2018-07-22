import java.io.File;
import java.util.ArrayList;

/**
 * Created by mma on 5/20/2016.
 */
public class Main {
    public static void main( String args[] ){
        // TODO Auto-generated method stub

        File input = new File("input.in") ;
        File output = new File("output.out") ;

        GrammarGenerator machineGenerator = GrammarGenerator.getInstance(input) ;

        ArrayList<Grammar> grammars = machineGenerator.generate() ;

        for( Grammar grammar : grammars ){
            grammar.simplification();
        }

    }
}
