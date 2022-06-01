trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   
//    if (trigger.isAfter) {
//        System.debug('trigger.new after insert / update = '+trigger.new);
//    }
   
   
   
   
   
   
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     System.debug('before insert account trigger fired'); 
    // }
    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     System.debug('before update account trigger fired');
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     System.debug('after insert account trigger fired'); 
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     System.debug('after update account trigger fired');
    // }   

    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    // }
    // if (trigger.isBefore) {
    //     AccountTriggerHandler.updateAccountDescription(Trigger.new, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }

    // if (trigger.isAfter && trigger.isUpdate) {
    //     AccountTriggerHandler.updateVIPForAllContacts(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }

    // if (trigger.isAfter&&trigger.isUpdate) {
    //     AccountTriggerHandler.updateVIPFieldsOnContacts(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }
   
    // if (trigger.isUpdate && trigger.isAfter){
    //     AccountTriggerHandler.UpdateContactPhoneNumber();
    // }
//============================================================================================
    // if(trigger.isBefore){
    //     system.debug('before insert/update trigger called');
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     system.debug('before insert/update trigger end.');
        
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
//====================================================================================================

        if (trigger.isBefore&&trigger.isInsert || trigger.isBefore&&trigger.isUpdate) {
            AccountTriggerHandler.accountNameCheck(trigger.new, trigger.oldMap);
        }
//=====================================================================================================
// Bir Account oluştuğunda, o Account'a bağlı bir Opportunity ve bir Contact oluşturan bir trigger (triggerHandlerClass) tasarlayınız.
// 1. Account create edildiginde => trigger.isInsert
// 2. Account'a bagli opportunity ve contact child recordlari create edileceginden ID lazim => trigger.isAfter

        if (trigger.isInsert && trigger.isAfter) {
            AccountTriggerHandler.crateOppAndContact(trigger.new);
        }
//=====================================================================================================
}