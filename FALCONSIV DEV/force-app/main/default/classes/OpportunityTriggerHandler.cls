public class OpportunityTriggerHandler {
    public static void opportunityCloseDateValidation(List<Opportunity> oppTriggerNew,List<Opportunity> oppTriggerOld,  
                                                    Map<id,Opportunity> oppTriggerNewMap, Map<Id,Opportunity> oppTriggerOldMap) {
        for (Id eachId : oppTriggerNewMap.keySet()) {
            if (oppTriggerOldMap!=null) {
                if (oppTriggerNewMap.get(eachId).CloseDate<oppTriggerOldMap.get(eachId).CloseDate) {
                    oppTriggerNewMap.get(eachId).CloseDate.addError('Close Date can not be update to less that what already provided');
                }
            }
        }
    }
}