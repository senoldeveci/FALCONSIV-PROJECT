public class SoqlDemoReview {
    public static void accountSoql_1(){
        List<Account> accList = [Select Id, name from Account WHERE name LIKE 'S%'];
        System.debug(accList);
        System.debug(accList.size());
        accList.sort();
        System.debug(accList);

        Account acc = [Select Id, name from Account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug(acc);
    }

    public static void accountSoql_2() {
        Account acc2 = [Select Id, Name, Phone, AccountNumber From Account ORDER BY CreatedDate LIMIT 1];
        ID id1 = acc2.Id;
        String name1 = acc2.Name;
        string phone1 = acc2.Phone;
        string accountNum1 = acc2.AccountNumber;
        System.debug('id = '+id1);
        System.debug(' name = '+name1);
        System.debug(' phone = '+phone1);
        System.debug(' Account Number = '+accountNum1);
    }

    public static void accountSoql_3() {
        List<Account> accList2 = [Select Id, Name, Phone, AccountNumber From Account ORDER BY CreatedDate DESC];
        List<String> namesList = new List<String>();
        List<Id> allIdsList = new List<Id>();
        List<String> phoneNumbersList = new List<String>();
        List<String> accountNumbersList = new List<String>();

        for (account i : accList2) {
            namesList.add(i.Name);
            allIdsList.add(i.Id);
            phoneNumbersList.add(i.Phone);
            accountNumbersList.add(i.AccountNumber);
        }
        System.debug(' Names = '+namesList);
        System.debug(' allIds = '+allIdsList);
        System.debug(' Phone Numbers = '+phoneNumbersList);
        System.debug(' Account Numbers = '+accountNumbersList);
    }

    public static void accountSoql_Filter(string accNameFilter) {
        List<account> accList3 = [Select Id, name From Account WHERE name = :accNameFilter];
        System.debug(' List of Accounts whose name is '+accNameFilter+' = '+accList3);
    }
}