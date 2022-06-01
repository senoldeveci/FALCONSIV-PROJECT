trigger Salesforce_ProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    // if (trigger.isAfter&&trigger.isInsert) {
    //     for (Salesforce_Project__c eachPrj : trigger.new) {
    //         Salesforce_Ticket__c ticket1 = new Salesforce_Ticket__c();
    //         ticket1.Subject__c = 'test subject';
    //         ticket1.Status__c = 'New';
    //         ticket1.Priority__c = 'High';
    //         ticket1.Salesforce_Project__c = eachPrj.Id;
    //         insert ticket1;
    //     }
    // }

    if (trigger.isAfter&&trigger.isInsert){
        System.debug('trigger called');
        SalesforceProjectTiggerHandler.updateProjectDescription(trigger.newMap.keySet());
        System.debug('Future method called already.');
        SalesforceProjectTiggerHandler.createDefaultSAlesforceTicket(trigger.new);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTiggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}