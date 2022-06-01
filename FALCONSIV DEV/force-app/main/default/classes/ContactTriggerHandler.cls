public class ContactTriggerHandler {
    // public static void contactUpdateValidation1(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    //                                              Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
    //         //add error is only allowed in trigger.new
    //          for(contact eachContact: cntTriggerNew){
    //              if(cntTriggerOldMap.get(eachContact.Id).LeadSource == 'Partner Referral'){
    //                  eachContact.addError('Cannot update contact where lead source is Partner Referral');
    //              }
    //         }
    //     }
            

    // public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld,
    //                                             Map<id, contact> cntTriggerNewMap, Map<id, contact> cntTriggerOldMap){
    //         //add error if we try to update the lead source
    //         for(contact eachContact: cntTriggerNew){
    //             if (cntTriggerOldMap.get(eachContact.Id).LeadSource!=eachContact.LeadSource) {
    //                 eachContact.Leadsource.addError('Cannot update lead source where lead source is Partner Referral');
    //             }
    //         }
    // }

    public static void contactUpdateValidation1(List<Contact> contactTriggerNew, List<Contact> contactTriggerOld,
                                                Map<Id,Contact> contactTriggerNewMap, Map<Id,Contact> contactTriggerOldMap) {
        for (Contact eachCnt : contactTriggerNew) {
            if (contactTriggerOldMap.get(eachCnt.Id).LeadSource=='Partner Referral') {
                eachCnt.addError('Cannot update contact where lead source is partner referral');
            }
        }
    }

    public static void contactUpdateValidation2(List<Contact> contactTriggerNew, List<Contact> contactTriggerOld,
                                                Map<Id,Contact> contactTriggerNewMap, Map<Id,Contact> contactTriggerOldMap) {
        for (Contact eachCnt : contactTriggerNew) {
            if (contactTriggerOldMap.get(eachCnt.Id).LeadSource!=eachCnt.LeadSource) {
                eachCnt.LeadSource.addError('You are not allowed to update lead source where lead source is partner referral');
            }
        }
    }
}