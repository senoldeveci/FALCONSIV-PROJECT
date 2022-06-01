public class NumberRecords {
    public static List<integer> checkElementInTheList(List<integer> list1, integer num1) {
        List<integer> integerList = new List<integer>();
        boolean containsNum1;
        for (integer element : list1) {
            containsNum1 = list1.contains(num1);
        }
        if (containsNum1==true) {
            system.debug(num1+ ' exists in the list');
        }else {
            system.debug(num1+ ' does not exist in the list');
        }
        return integerList;
    }
}