trigger AccountTriggerTurkishRevClass on Account (before insert, after insert, before update, after update) {
    // if (trigger.isBefore) {
    //     System.debug(' Before trigger of Account object');
    //     System.debug(' trigger.new in before trigger = '+trigger.new);
    // }

    // if (trigger.isAfter){
    //     System.debug(' After trigger of account object');
    //     System.debug(' size trigger.new in after trigger = '+trigger.new.size());
    //     if (trigger.isInsert) {
    //         System.debug('========AFTER INSERT=======');
    //     }if (trigger.isUpdate) {
    //         System.debug('========AFTER UPDATE=======');    
    //     }

    //     Set<Id> accIdSet = new Set<Id>();
    //     for (account eachAcc : trigger.new) {
    //         accIdSet.add(eachAcc.Id);
    //     }
    //     System.debug(' accIdSet = '+accIdSet);
    // }
    // if (trigger.isBefore) {
    //     boolean descValue;
    //     if (trigger.isInsert) {
    //         for (Account eachAcc : trigger.new) {
    //             if (eachAcc.Active__c == 'Yes') {
    //                 descValue = True;
    //             } else {
    //                 descValue = False;
    //             }
    //         }
    //     }
    //     if (trigger.isUpdate) {
    //         for (Account eachAcc : trigger.new) {
    //             if (eachAcc.Active__c == 'Yes' 
    //             && trigger.oldMap.get(eachAcc.Id).Active__c!='Yes') {
    //                 descValue = True;
    //             } else {
    //                 descValue = False;
    //             }
    //         }
    //     }
    //     if (descValue) {
            
    //     } else {
            
    //     }
    // }

    // if (trigger.isBefore&&trigger.isInsert) {
    //     for (Account eachAcc : trigger.new) {
    //         if (eachAcc.AnnualRevenue!=trigger.oldMap.get(EachAcc.Id).AnnualRevenue) {
    //             decimal fark = Math.abs(eachAcc.AnnualRevenue - trigger.oldMap.get(EachAcc.Id).AnnualRevenue);
    //            eachAcc.Description = ' Annual revenue changed by '+fark;
    //         } else {
    //             eachAcc.Description = '';
    //         }
    //     }
    // }
    // if (trigger.isAfter&&trigger.isUpdate) {
    //     for (Id eachId : trigger.newMap.keySet()) {
    //         System.debug(' Updated account name ='+trigger.newMap.get(eachId).Name);
    //         System.debug(' Old account name = '+trigger.oldMap.get(eachId).Name);
    //         System.debug('=============================');
    //     }
    // }
    if (trigger.isAfter&&trigger.isUpdate) {
        integer counter = 0;
        for (Id eachId : trigger.newMap.keySet()) {
            if (trigger.newMap.get(eachId).Website!=trigger.oldMap.get(eachId).Website) {
                System.debug(' For account '+ trigger.newMap.get(eachId).name+' , new website is '+trigger.newMap.get(eachId).Website);
                counter++;
            }
        }
        System.debug(' # accounts updated = '+counter);
    }
}