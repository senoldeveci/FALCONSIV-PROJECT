public class IterationExercise2 {
    
    public void getPerfectAverage(integer num1, integer num2) {
        decimal average;
        integer counter = 1;   
        integer sum = num1;
        string str1 = '';
        System.debug(' Input: num1 = '+num1);
        System.debug(' Input: num2 = '+num2);
       for (Integer i = (num1+1); i <= num2; i++) {
            sum = sum+i; 
            counter++;   
       }
       average = sum / counter;
       System.debug(' Output: '+average);
       System.debug('');
       System.debug(' Calculation :');
       for (integer i=num1; i<=num2; i++){
            str1 = str1+string.valueOf(i)+ ' + ';
       }
       System.debug(str1+' = '+sum);
       System.debug(' Total '+counter+ ' numbers between '+num1+ ' to '+num2);
       System.debug(sum+' / '+counter+' = '+average);
     }
}