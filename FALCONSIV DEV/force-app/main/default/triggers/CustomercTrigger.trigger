trigger CustomercTrigger on Customerc__c (before delete, after delete) {
    if (trigger.isBefore && trigger.isDelete) {
        CustomerHandler.deletePayments(trigger.old, trigger.oldMap);
    }



    // trigger CustomerTrigger on Customer__c (before delete) {
    //     List<Id> active =new List<Id>();
    //     List<id> inactive=new List<Id>();
    //     //Collecting active and inactive account Ids seperately
    //     for(Customer__c c: Trigger.old){
    //         if(c.active__c ==true){
    //             active.add(c.id);
    //         }else{
    //             inactive.add(c.id);
    //         }
    //     }
    //     //Find all the related payment records of all active Customer records
    //     if(!active.isEmpty()){
    //         List<Payments__c> payments1 =[select id from Payments__c where Customer__c in :active];
    //         if(!payments1.isEmpty())
    //             delete payments1;
    //     }
    //     //Find all the related 'Online' payment records of all inactive Customer records
    //     if(!Inactive.isEmpty()){
    //         List<Payments__c> onlines=[select id from Payments__c where Customer__c in :Inactive and Mode__c='Online'];
    //         if(!onlines.isEmpty())
    //             delete onlines;
    //     }
    // }
}