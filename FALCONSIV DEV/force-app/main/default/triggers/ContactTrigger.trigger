trigger ContactTrigger on Contact (before insert, before update, after insert, after update){
    // if (Trigger.isBefore) {
    //     System.debug('We are in before trigger');
    //     if (Trigger.isInsert) {
    //         System.debug(' Before insert trigger called');
    //     }
    //     if (Trigger.isUpdate) {
    //         System.debug('Before update trigger called');
    //     }
    // }

    // if (Trigger.isAfter) {
    //     System.debug('We are in after trigger');
    //     if (Trigger.isInsert) {
    //         System.debug(' After insert trigger called');
    //     }
    //     if (Trigger.isUpdate) {
    //         System.debug('After update trigger called');
    //     }
    // }

    // if (trigger.isBefore&&trigger.isUpdate) {
    //     for (Contact eachCnt : trigger.new) {
    //         if (eachCnt.LastName!=trigger.oldMap.get(eachCnt.Id).LastName) {
    //             eachCnt.Description = 'Contact last name has been changed from '+trigger.oldMap.get(eachCnt.Id).LastName+' to '+eachCnt.LastName;
    //         }else{
    //             eachCnt.Description = '';
    //         }
    //     }
    // }

    if(trigger.isBefore && trigger.isUpdate){
        ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.contactUpdateValidation2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);

    }
}