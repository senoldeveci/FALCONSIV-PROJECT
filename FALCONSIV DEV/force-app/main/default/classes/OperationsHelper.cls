public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal num1, decimal num2) {
        decimal larger = math.max(num1, num2);
        return larger; 
    }

    public static decimal smallestOutOfThreeNumbers(decimal num1, decimal num2, decimal num3) {
    
    decimal smallest1 = math.min(num1, num2);
    decimal smallest2 = math.min(smallest1, num3);
    return smallest2;
    }

    public static decimal sum (List<decimal> list1) {
        decimal sum1 = 0;
        if (!list1.isEmpty()) {
            for (decimal i:list1){
                sum1+=i;
            }
            
        }else {
            
            System.debug('Please provide values to do the operation');
            sum1=null;
        }
        return sum1;
    }

    public static decimal average (List<decimal> list1) {
        decimal sum1 = 0;
        decimal average = 0;
        if (!list1.isEmpty()) {
            for (decimal i:list1){
                sum1+=i;
            }
            average = sum1/list1.size();
        }else {
            
            System.debug('Please provide values to do the operation');
            average=null;
        }
        return average;
    }

    public static decimal highest (List<decimal> list1) {
        decimal decHighest = 0;
        
        if (!list1.isEmpty()) {
            list1.sort();
            integer size = list1.size();
            decHighest = list1.get(size-1);
        }else {
            
            System.debug('Please provide values to do the operation');
            decHighest=null;
        }
        return decHighest;
    }

    public static decimal lowest (List<decimal> list1) {
        decimal declowest = 0;
        
        if (!list1.isEmpty()) {
            list1.sort();
            declowest = list1.get(0);
        }else {
            
            System.debug('Please provide values to do the operation');
            declowest=null;
        }
        return declowest;
    }

    public static void reverseOrder (List<decimal> list1) {

        List<Decimal> reversedList = new  List<Decimal>();
        for (Integer i = list1.size()-1; i >= 0; i--) {
            reversedList.add(list1[i]);
        }
        system.debug(reversedList);
    }
}