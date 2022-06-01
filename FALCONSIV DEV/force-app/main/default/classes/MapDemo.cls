public class MapDemo {
    //returns monthName from month number
    // public static string retrieveMonth(integer num1) {
    //     string returnMonth = '';
    //     Map<Integer,String> monthsMap = new Map<Integer,String>();

    //     monthsMap.put(1, 'January');
    //     monthsMap.put(2, 'February');
    //     monthsMap.put(3, 'March');
    //     monthsMap.put(4, 'April');
    //     monthsMap.put(5, 'May');
    //     monthsMap.put(6, 'June');
    //     monthsMap.put(7, 'July');
    //     monthsMap.put(8, 'August');
    //     monthsMap.put(9, 'September');
    //     monthsMap.put(10, 'October');
    //     monthsMap.put(11, 'November');
    //     monthsMap.put(12, 'December');

    //     boolean checkMonth = monthsMap.containsKey(num1);
    //     if (checkMonth) {
    //         returnMonth = monthsMap.get(num1);
    //     } else {
    //         returnMonth =' Please enter a number between 1 and 12';
    //     }
    //     return returnMonth;
    // }

    public static string retrieveMonth( integer m){
        string returnMonth = '';
        Map<Integer,String> monthMap = new Map<Integer,String>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        Boolean checkMonth = monthMap.containsKey(m);
        if (checkMonth) {
            returnmonth = monthMap.get(m);
        } else {
            returnMonth = ' Please enter a number between 1 and 12';
        }
        return returnMonth;
    }
}