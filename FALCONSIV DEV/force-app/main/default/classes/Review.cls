public class Review {
    
      public integer add (integer a, integer b) {
        integer total = a + b;
        return total;
    }

    public integer subtraction (integer a, integer b) {
        integer result = a - b;
        return result;
    }

    public integer multiplication (integer a, integer b){
        integer resultMultiplication = a * b;
        return resultMultiplication;
    }

    public integer division (integer a, integer b){
        integer resultDivision = a / b;
        return resultDivision;
    }

    public integer multiplication (integer a, integer b, integer c){
        integer resultMultiplication  = a * b * c;
        return resultMultiplication;
    }

    public boolean leapYearCheck (date x){
        integer year = x.year();
        boolean isLeapYear2 = date.isLeapYear(year);
        return isLeapYear2;
    }

}