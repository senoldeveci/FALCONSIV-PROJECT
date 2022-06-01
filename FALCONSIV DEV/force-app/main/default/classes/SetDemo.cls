public class SetDemo {
    public static Set<string> capitalizeSet(Set<String> set1) {

        Set<String> upperCaseSet = new Set<String>();
        for (string i:set1){
            string tempStr = i.toUpperCase();
            upperCaseSet.add(tempStr);
        }
        return upperCaseSet;
    }
}