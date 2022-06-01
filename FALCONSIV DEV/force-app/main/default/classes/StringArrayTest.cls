public class StringArrayTest {
    public static List<string> generateStringArray(integer num1){
        List<string> stringList = new List<string>();
        for (integer i=0; i<num1;i++) {
            stringList.add('Test '+i);
        }
        return stringList;
    }
}