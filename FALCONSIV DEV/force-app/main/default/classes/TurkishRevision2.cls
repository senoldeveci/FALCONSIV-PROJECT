public class TurkishRevision2 {
    public integer counter = 0;

    public decimal prizeCalculation(string bookName, integer quantity, decimal unitPrize){
        counter = counter+1;
        decimal totalPrize = 0;
        totalPrize = quantity * unitPrize;
        System.debug(' You purchased '+quantity+' ' +bookName+ ' The total amout you owe is = '+totalPrize);
        return totalPrize;
       
    } 

    
}