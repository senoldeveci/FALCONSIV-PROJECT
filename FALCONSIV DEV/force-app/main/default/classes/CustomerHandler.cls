public class CustomerHandler {
    public static void deletePayments(List<Customerc__c> customerTriggerOld, Map<Id, Customerc__c>customerTriggerOldMap) {
//Whenever Active Customers are deleted, all the corresponding payments should be deleted.
        // 1. trigger'i tetikleyen customers record delete oldugunda o yuzden customer obj de calisacagiz
        // 2. before ve after delete her ikisi de trigger.old ve trigger.oldmap'te calisiyor.
        // 3. ID ihtiyacimiz var
        // 4. Related recordlari silecegiz. O yuzden after trigger
        // 5. SOQL ve DML gerekiyor
        Set<Id> deletedCustomersId = new Set<Id>(); 
        for (customerc__c c : customerTriggerOld) {
            if (c.Active__c==true) {
                deletedCustomersId.add(c.Id);
            }  
        }
        if (!deletedCustomersId.isEmpty()) {
            List<Paymentc__c> paymentList = [SELECT id, name from Paymentc__c where Customerc__c IN :deletedCustomersId];

            delete paymentList;
        }
    }
}