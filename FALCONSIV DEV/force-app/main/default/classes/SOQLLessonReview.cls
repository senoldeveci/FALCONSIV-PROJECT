public class SOQLLessonReview {
    public static void accountSOQL_Filter(string str1) {
        List<Account> filteredAccList  = [Select id, name from Account where name = :str1];
        System.debug(' Accounts that contains '+str1+' = '+filteredAccList);
    }

    public static void childToParent() {
        List<Contact> contactList = [Select Id, Name, Account.Name FROM Contact WHERE Account.Industry = 'Energy'];
        for (contact eachContact : contactList) {
            System.debug('Contact name is '+eachContact.Name+' and its account name is '+eachContact.Account.Name);
            System.debug('--------');
        }
    }

    // public static void customChildToParent() {
    //     List<Salesforce_Ticket__c> ticketList = [Select name, status__c, Priority__c, Salesforce_Project__r.Project_Name__c, Salesforce_Project__r.status__c From Salesforce_Ticket__c Where Salesforce_Project__r.Status__c != NULL ORDER BY Salesforce_Project__r.Status__c ];
    //     for (Salesforce_Ticket__c eachTicket : ticketList) {
            
    //     }
        public static void parentToChild() {
            List<Account> accList = [Select name, AnnualRevenue, (SELECT name, amount from opportunities where StageName = 'Closed Won') FROM Account WHERE Type = 'Customer - Direct'];
            for (account eachAccount : accList) {
                    System.debug(' Account Name '+eachAccount.Name+' and its annual revenue is-->'+eachAccount.AnnualRevenue);
                    for (opportunity eachOpportunity : eachAccount.Opportunities) {
                        System.debug(' Opportunity name '+eachOpportunity.Name);
                        System.debug(' Opportunity Amount '+eachOpportunity.Amount);
                    }
                    System.debug('----------');
            }
        }
}