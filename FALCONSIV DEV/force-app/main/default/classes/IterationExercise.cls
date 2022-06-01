public class IterationExercise {
    public void getMultiplicationTable(integer num) {
        for (Integer i = 1; i <= num; i++) {
            integer result = i*num;
            System.debug(i+' x '+num+' = '+result);
        }
    }
}