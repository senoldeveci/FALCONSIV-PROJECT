trigger ContactTriggerAssignment on Contact (before insert, before update, after insert, after update) {
    // if (trigger.isBefore) {
    //     System.debug(' ====BEFORE TRIGGER======');
    //     if (trigger.isInsert) {
    //         System.debug(' Trigger.new before insert = '+trigger.new);
    //         System.debug(' Trigger.old before insert = '+trigger.old); 
    //         System.debug(' Trigger.newMap before insert = '+trigger.newMap);
    //         System.debug(' Trigger.oldMap before insert = '+trigger.oldMap);    
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug(' Trigger.new before update = '+trigger.new);
    //         System.debug(' Trigger.old before update = '+trigger.old); 
    //         System.debug(' Trigger.newMap before update = '+trigger.newMap);
    //         System.debug(' Trigger.oldMap before update = '+trigger.oldMap);
    //     }
    // }

    // if (trigger.isAfter) {
    //     System.debug(' ====AFTER TRIGGER======');
    //     if (trigger.isInsert) {
    //         System.debug(' Trigger.new after insert = '+trigger.new);
    //         System.debug(' Trigger.old after insert = '+trigger.old); 
    //         System.debug(' Trigger.newMap after insert = '+trigger.newMap);
    //         System.debug(' Trigger.oldMap after insert = '+trigger.oldMap);  
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug(' Trigger.new after update = '+trigger.new);
    //         System.debug(' Trigger.old after update = '+trigger.old); 
    //         System.debug(' Trigger.newMap after update = '+trigger.newMap);
    //         System.debug(' Trigger.oldMap after update = '+trigger.oldMap);
    //     }
    // }

    if (trigger.isAfter&&trigger.isUpdate) {
        for (Id eachId : trigger.newMap.keySet()) {
            if (trigger.newMap.get(eachId).LastName!=trigger.oldMap.get(eachId).LastName) {
                System.debug(' Last Name is changed - '+trigger.oldMap.get(eachId).LastName+' is changed to '+trigger.newMap.get(eachId).LastName+'.');
            }
        }
    }
}