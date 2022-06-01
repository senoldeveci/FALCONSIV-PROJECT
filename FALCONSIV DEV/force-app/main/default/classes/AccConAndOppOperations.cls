public class AccConAndOppOperations {
    // public static List<Account> fetchAccount() {
        
    // }
    // Prepare a method which returns the sum of all the closed won opportunities Amount present in
    // the org.
    public static decimal sumOfAllClosedWonOpps() {
        decimal sum = 0;
        List<Opportunity> oppList = [Select name, amount from Opportunity where StageName = 'Closed Won' AND amount!=null ];

        for (Opportunity eachOpp : oppList) {
            sum += eachOpp.Amount;
        }
        return sum;
    }

    // Prepare a method which will return all the Accounts for which at least a closed Won
    // Opportunity is present. Make it dynamic if we want to bring account for other opportunity
    // stageNames.

    public static List<Account> accountsWithClosedWonOpportunity(string x) {
        List<Account> accList = new List<Account>();
        accList = [Select id, name from Account where id IN (Select AccountId from Opportunity where stageName = :x)];

        return accList;  
    }

    // Prepare a method which will return all the Accounts for which at least a contact is present.
    public static List<Account> accountsWithContacts() {
        List<Account> accList = new List<Account>();
        accList = [Select id, name from Account where id IN (Select AccountId from Contact where id!=null)];

        return accList;  
    }

}