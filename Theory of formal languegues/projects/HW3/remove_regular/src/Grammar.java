import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/**
 * Created by mma on 5/20/2016.
 */
public class Grammar {
    private ArrayList<String> variables;
    private ArrayList<String> terminals;
    private String startVariable;
    private HashMap<String, ArrayList<String>> product;

    public Grammar(ArrayList<String> variables, ArrayList<String> terminals, String startVariable,
                   HashMap<String, ArrayList<String>> product) {
        this.variables = variables;
        this.terminals = terminals;
        this.startVariable = startVariable;
        this.product = product;
    }

    public ArrayList<String> getVariables() {
        return variables;
    }

    public ArrayList<String> getAlphabets() {
        return terminals;
    }

    public String getStartVariable() {
        return startVariable;
    }

    public HashMap<String, ArrayList<String>> getProduct() {
        return product;
    }

    public void simplification() {
        ArrayList<String> nullVariable = findNullVariable();
//        System.out.println(nullVariable) ;
        removeLambdaProduction(nullVariable);
        removeUselessVariableBasedOnFirstAspect();
        removeUselessVariableBasedOnSecondAspect();
        removeUnitProduction();
        System.out.println(product);
    }

    private ArrayList<String> findNullVariable() {
        ArrayList<String> oldNull = new ArrayList<>();
        ArrayList<String> newNull = new ArrayList<>();

        for (String variable : variables) {
            if (product.get(variable).contains("$"))
                newNull.add(variable);
        }

        while (!oldNull.equals(newNull)) {
            oldNull = (ArrayList<String>) newNull.clone();
            for (String variable : variables) {
                for (String s : product.get(variable)) {
                    if (allSymbolsAreNull(s, oldNull) && !oldNull.contains(variable))
                        newNull.add(variable);
                }
            }
        }

        return newNull;
    }

    private boolean allSymbolsAreNull(String s, ArrayList<String> nullVariable) {

        for (int i = 0; i < s.length(); i++) {
            Character temp = s.charAt(i);
            String current = temp.toString();

            if (!nullVariable.contains(current))
                return false;
        }

        return true;
    }

    private void removeLambdaProduction(ArrayList<String> nullVariable) {
        HashMap<String, ArrayList<String>> newProduct = new HashMap<>();

        for (String variable : product.keySet()) {
            String key = variable;
            ArrayList<String> oneRow = new ArrayList<>();

            for (String rightHand : product.get(variable)) {
                ArrayList<String> temp = new ArrayList<>();
                for (int i = 0; i < rightHand.length(); i++) {
                    Character a = rightHand.charAt(i);
                    String s = a.toString();
                    if (nullVariable.contains(s)) {
                        temp.add(s);
                    }
                }

                String[] codes = new String[(int) Math.pow(2, temp.size())];
                for (int i = 0; i < Math.pow(2, temp.size()); i++) {
                    codes[i] = Integer.toBinaryString(i);
                    if (codes[i].length() < temp.size()) {
                        String zeros = "";
                        for (int j = 0; j < temp.size() - codes[i].length(); j++) {
                            zeros += "0";
                        }
                        codes[i] = zeros + codes[i];
                    }
                }

                for (String code : codes) {
                    int head = 0;
                    String newRightHand = "";
                    for (int i = 0; i < rightHand.length(); i++) {
                        if (temp.contains(((Character) rightHand.charAt(i)).toString())) {
                            if (code.charAt(head) == '1')
                                newRightHand += ((Character) rightHand.charAt(i)).toString();
                            head++;
                        } else {
                            if (!((Character) rightHand.charAt(i)).toString().equals("$"))
                                newRightHand += ((Character) rightHand.charAt(i)).toString();
                        }
                    }
                    if (newRightHand.length() > 0)
                        oneRow.add(newRightHand);

                }
            }
            if (oneRow.size() > 0)
                newProduct.put(key, oneRow);
        }
        this.product = newProduct;
    }

    private void removeUselessVariableBasedOnFirstAspect() {
        ArrayList<String> oldVariables = new ArrayList<>();
        ArrayList<String> newVariables = new ArrayList<>();

        for (String variable : variables) {
            if (product.get(variable) != null)
                for (String rightHand : product.get(variable)) {
                    if (isRightHandMemberOfClosureOfTerminals(rightHand)) {
                        newVariables.add(variable);
                        break;
                    }
                }
        }

        while (!oldVariables.equals(newVariables)) {
            oldVariables = (ArrayList<String>) newVariables.clone();
            for (String variable : variables) {
                if (product.get(variable) != null)
                    for (String rightHand : product.get(variable)) {
                        if (isRightHandMemberOfClosureOfTerminals(rightHand, oldVariables) &&
                                !oldVariables.contains(variable)) {
                            newVariables.add(variable);
                            break;
                        }
                    }
            }
        }

        this.product = createNewProductFromNewVariables(newVariables);

        for (int i = variables.size() - 1; i >= 0; i--) {
            if (!newVariables.contains(variables.get(i)))
                variables.remove(i);
        }

    }

    private boolean isRightHandMemberOfClosureOfTerminals(String s) {
        for (int i = 0; i < s.length(); i++) {
            if (!terminals.contains(((Character) s.charAt(i)).toString())) {
                return false;
            }
        }

        return true;
    }

    private boolean isRightHandMemberOfClosureOfTerminals(String s, ArrayList<String> variables) {
        for (int i = 0; i < s.length(); i++) {
            if (!terminals.contains(((Character) s.charAt(i)).toString()) &&
                    !variables.contains(((Character) s.charAt(i)).toString())) {
                return false;
            }
        }

        return true;
    }

    private boolean doesContainsUselessVariable(String s, ArrayList<String> variables) {
        for (String variable : this.variables) {
            if (!variables.contains(variable))
                if (s.contains(variable))
                    return true;
        }

        return false;
    }

    private void removeUselessVariableBasedOnSecondAspect() {
        ArrayList<String> oldVariables = new ArrayList<>();
        ArrayList<String> newVariables = new ArrayList<>();

        newVariables.add("S");

        while (!oldVariables.equals(newVariables)) {
            oldVariables = (ArrayList<String>) newVariables.clone();

            for (String variable : oldVariables) {
                for (String rightHand : product.get(variable)) {
                    for (String v : variables) {
                        if (rightHand.contains(v) && !newVariables.contains(v))
                            newVariables.add(v);
                    }
                }
            }
        }

        this.product = createNewProductFromNewVariables(newVariables);

        for (int i = variables.size() - 1; i >= 0; i--) {
            if (!newVariables.contains(variables.get(i)))
                variables.remove(i);
        }

    }

    private HashMap<String, ArrayList<String>> createNewProductFromNewVariables(ArrayList<String> newVariables) {
        HashMap<String, ArrayList<String>> newProduct = new HashMap<>();

        for (String variable : variables) {
            System.out.println(variable);
            ArrayList<String> oneRow = new ArrayList<>();

            if (product.get(variable) != null) {
                for (String rightHand : product.get(variable)) {
                    if (!doesContainsUselessVariable(rightHand, newVariables)) {
                        oneRow.add(rightHand);
                    }
                }
                newProduct.put(variable, oneRow);
            }
        }

        return newProduct;
    }

    private void removeUnitProduction() {
        HashMap<String, ArrayList<String>> unitProduct = new HashMap<>();

        for (String variable : variables) {
            ArrayList<String> oneRow = new ArrayList<>();
            for (String rightHand : product.get(variable)) {
                if (variables.contains(rightHand))
                    oneRow.add(rightHand);
            }
            unitProduct.put(variable, oneRow);
        }

        for (String srcVariable : unitProduct.keySet()) {
            for (String dstVariable : unitProduct.keySet()) {
                HashMap<String, Boolean> mark = new HashMap<>();
                for (String variable : unitProduct.keySet()) {
                    mark.put(variable, false);
                }
                mark.replace(srcVariable, true);
                if (!srcVariable.equals(dstVariable) && isExistRout(srcVariable, dstVariable, unitProduct, mark)) {
                    for (String rightHand : product.get(dstVariable)) {
                        if (!product.get(srcVariable).contains(rightHand))
                            product.get(srcVariable).add(rightHand);
                    }
                }
            }
        }

        HashMap<String, ArrayList<String>> newProduct = new HashMap<>();
        for (String variable : variables) {
            ArrayList<String> oneRow = new ArrayList<>();
            for (String rightHand : product.get(variable)) {
                if (!variables.contains(rightHand))
                    oneRow.add(rightHand);
            }

            newProduct.put(variable, oneRow);
        }

        product = newProduct;
    }

    private boolean isExistRout(String src, String dst, HashMap<String,
            ArrayList<String>> adjacencyList, HashMap<String, Boolean> mark) {

        if (src.equals(dst))
            return true;
        else {

            for (String neighbour : adjacencyList.get(src)) {
                if (mark.get(neighbour) == false) {
                    mark.put(neighbour, true);
                    if (isExistRout(neighbour, dst, adjacencyList, mark))
                        return true;
                    mark.replace(neighbour, false);
                }

            }

            return false;
        }
    }
}
