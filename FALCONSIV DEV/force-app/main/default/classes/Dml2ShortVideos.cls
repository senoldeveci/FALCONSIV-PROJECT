public class Dml2ShortVideos {
    public static Id createAccount() {
        account acc = new Account();
        acc.Name = ' DML Short Video 2 Account';
        insert acc;
        return acc.Id;
    }

    public static void createContact() {
        contact c = new Contact();
        c.LastName = ' Contact1 ';
        c.AccountId = createAccount();
        insert c;
    }

    public static Id createProject() {
       Salesforce_Project__c project1 = new Salesforce_Project__c();
       project1.Project_Name__c = ' DML 2 Precise Video Project Latest Try';
       insert project1;
       return project1.Id; 
    }

    public static void createTicket() {
        Salesforce_Ticket__c ticket1 = new Salesforce_Ticket__c();
        ticket1.Subject__c = 'Latest Try Subject';
        ticket1.Salesforce_Project__c = createProject();
        insert ticket1;
    }

    public static void updateTicket() {
        Salesforce_Project__c prjct = [Select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'DML 2 Precise Video Project Latest Try'];
        Salesforce_Ticket__c tckt = [Select id, subject__c from Salesforce_Ticket__c where Subject__c = 'Latest Try Subject'];
        tckt.Subject__c = 'Updated subject';
        tckt.Salesforce_Project__c  = prjct.id;
        update tckt;
    }
}