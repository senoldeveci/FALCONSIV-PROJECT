public class StringArray {
    public static List<string> generateStringArray(integer num1) {
        List<string> formattedStringList = new List<string>();
        string format = '';
        for (Integer i = 0; i < num1; i++) {
            format = 'Test '+i;
            formattedStringList.add(format);
        }
        return formattedStringList;
    }
}