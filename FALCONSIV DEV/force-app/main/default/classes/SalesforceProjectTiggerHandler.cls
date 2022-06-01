public class SalesforceProjectTiggerHandler {
    public static void createDefaultSAlesforceTicket(List<Salesforce_Project__c> spTriggerNew) {
        List<Salesforce_Ticket__c> ticketList = new List<Salesforce_Ticket__c>();
        for (Salesforce_Project__c eachProject : spTriggerNew) {
            Salesforce_Ticket__c ticket1 = new Salesforce_Ticket__c();
            ticket1.Subject__c = 'Default ST';
            ticket1.Description__c = 'Default Description';
            ticket1.Salesforce_Project__c = eachProject.Id;
            ticketList.add(ticket1);
        }
        if (!ticketList.isEmpty()) {
            insert ticketList;
        } 
    }
    //----------------------------------------------------------------------------
//future method (Whenever we create a project that method updates Salesforce_Project's Description
    @future
    public static void updateProjectDescription(set<Id> setProjectIds) {
        List<Salesforce_Project__c> listSp = [Select id, description__c from Salesforce_Project__c where id in :setProjectIds];
        for (Salesforce_Project__c sp : listSp) {
            sp.Description__c += ', updated from FUTURE';
        }
        System.debug('sp to update = '+listSp);
        update listSp;
    }
// Whenever the status of Salesforce_Project is changed to 'Completed' then 
    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<id, Salesforce_Project__c> spTriggerNewMap, Map<id, Salesforce_Project__c> spTriggerOldMap) {
        // get set<id> where status is changed.
        set<id> spIds = new Set<id>();
        for (Salesforce_Project__c sp : spTriggerNew) {
            //if new record status != old record status
            //status is changed to 'Completed'
            if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
            && sp.Status__c == 'Completed'){
                spIds.add(sp.Id);
            }
       }
       if(!spIds.isEmpty()){
         updateTicketStatusCompleted(spIds);
       }
   }
   @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
       for (salesforce_ticket__c st : listST) {
           st.Status__c = 'Completed';
       }
       if (!listST.isEmpty()) {
           update listST;
       }
   }
}