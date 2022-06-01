@isTest
public class CustomerHandlerTest {
    // 1.Create customer__c records with active__c == true and active__c == false
    // 2. Create Bulkify payment__records related with customer__c records.
    // 3. Add payment__c records to the list
    // 4. Insert list
    // 5. Call the method to test (Test.startTest / Test.stopTest)
    // 6. system.assert
    @isTest
    public static void deletePaymentsTest() {
       
        customerc__c c1 = new customerc__c(Active__c=true);
        customerc__c c2 = new customerc__c(Active__c=false);
        List<customerc__c> listActiveCustomer = new List<customerc__c>{c1};
        insert listActiveCustomer;

        List<Paymentc__c> paymentList = new List<Paymentc__c>();
        for (Integer i = 0; i < 300; i++) {
            Paymentc__c p = new Paymentc__c();
            if (i<150) {
                c1.id = p.Customerc__c;
                paymentList.add(p);
            }
            if (i<300) {
                c2.id = p.Customerc__c;
            }
    } 
    insert paymentList;
    delete listActiveCustomer;

    system.assert(paymentList.isEmpty());
    }
    


}