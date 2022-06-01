// Create a trigger on Case object named as “CaseTrigger”. Show the debug messages as follows:
// a. Triggers - "We are in the triggers"
// b. after triggers - "We are in the after triggers"
// c. before triggers - "We are in the before triggers"
// d. before Update - "We are in the before-Update triggers"
// e. before Insert - "We are in the before-Insert triggers"
// f. after update - "We are in the after-Update triggers"
// g. after Insert - "We are in the after-Insert triggers".

trigger CaseTrigger on Case (before insert, before update) {
//     List<Case> caseList = trigger.new;
//     System.debug('We are in the triggers');
    
//     if (trigger.isAfter) {
//         System.debug('We are in the after triggers');
//         System.debug('Case# '+ trigger.new.caseNumber)
//     } 
    
//     if (trigger.isBefore) {
//         System.debug('We are in the before triggers');
//     }
//     if (trigger.isBefore && trigger.isUpdate) {
//         System.debug('We are in the before-Update triggers');
//     }

//     if (trigger.isBefore && trigger.isInsert) {
//         System.debug('We are in the before-Insert triggers');
//         System.debug('Case# '+trigger.new.caseNumber+)
//     }
//     if (trigger.isAfter && trigger.isUpdate) {
//         System.debug('We are in the after-Update triggers');
//     }
//     if (trigger.isAfter && trigger.isInsert) {
//         System.debug('We are in the after-Insert triggers');
//     }

// 1. Show the message as 'Case origin is changed for [Case Number]' whenever case origin field
// value is changed.

    // if (trigger.isUpdate&&trigger.isBefore) {
    //     for (Id eachId : trigger.newMap.keySet()) {
    //         if (trigger.newMap.get(eachId).Origin!=trigger.oldMap.get(eachId).Origin) {
    //             System.debug('Case origin is changed for '+trigger.newMap.get(eachId).CaseNumber);
    //         }
    //     }
    // }

    // if (trigger.isAfter) {
    //     for (Case eachCase : trigger.new) {
    //         System.debug('Case# '+ eachCase.CaseNumber + 'with Id = '+eachCase.Id+' was created on '+eachCase.CreatedDate);
    //         }
    // }
    if (trigger.isInsert) {
        System.debug('before insert case');
    }
    if (trigger.isUpdate) {
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('# of times trigger executed' + CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countRecordsUpdated += Trigger.size;
        System.debug('# of records updated: '+CaseTriggerHandler.countRecordsUpdated);
    }

}