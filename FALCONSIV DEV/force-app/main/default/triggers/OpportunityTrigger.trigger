trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
    // // 4. Print the new and old field values for (Opportunity Name and Amount) fields whenever an
    // // opportunity is updated. 
    // if (trigger.isUpdate&&trigger.isBefore) {
    //     for (Id eachId : trigger.newMap.keySet()) {
            
    //     }
    // }
    if (trigger.isBefore) {
        OpportunityTriggerHandler.opportunityCloseDateValidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}