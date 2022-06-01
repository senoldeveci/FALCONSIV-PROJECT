public class SoqlDemo {
    public static void accountSoql_1() {
        // SOQL Query always returns List<sObjects>
        List<Account> listAcc = [Select ID, name from Account Where Name Like '%A%'];
        System.debug('account List = '+listAcc);
        system.debug('Number of accounts = '+listAcc.size());

        Account latestAcc = [Select ID, name From Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(' latest created account = '+latestAcc);

    }

    public static void accountSoql_2() {
        
        Account acc = [Select ID, name, Phone, AccountNumber From Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(' latest created account = '+acc);
        string accName = acc.Name;
        string accPhone = acc.Phone;
        Id accId = acc.Id;
        system.debug(' Acc name is '+accName+ ' and account phone number is '+accPhone+' account id is '+accId);

    }

    public static void accountSoql_3() {
        // SOQL Query always returns List<sObjects>
       List<Account> accList = [Select id, name, phone, accountnumber From Account ORDER BY CreatedDate DESC];
       System.debug(' Account List = '+accList);
       List<String> accNameList = new List<string>();
       List<String> accPhoneList = new List<string>();
       List<Id> accIdList = new List<string>();
        for (Account eachAccount : accList){
            string accName = eachAccount.Name;
            accNameList.add(accName);
            string accPhone = eachAccount.Phone;
            accPhoneList.add(accPhone);
            Id accId = eachAccount.Id;
            accIdList.add(accId);
            // system.debug(' Acc name is '+accName); 
            // system.debug(' account phone number is '+accPhone);
            // system.debug(' account id is '+accId);
            // system.debug('-------------');
           
        }
        System.debug('Account name list = '+accNameList);
        System.debug('Account phone list = '+accPhoneList);
        System.debug('Account ID list = '+accIdList);
    }

    public static void accountSoql_Filter() {
        string accNameFilter = ' Salesforce Inc.';
        List<Account> listAcc = [Select id, name from account where Name = :accNameFilter];
        system.debug(listAcc);
    }

    public static void childToParent_Soql1() {
        List<Contact> contactList = [Select Id, Name, account.name From Contact Where Account.Industry ='Energy'];
        for (contact eachContact : contactList) {
            string accName = eachContact.Account.Name;
            System.debug(' Contact name is '+eachContact.Name+' Its acc is '+eachContact.Account.Name);
        }
    }

    public static void sampleSoql4() {
        List<Account> accWithOpportunities = [Select Name, AnnualRevenue, (Select Name, Amount from Opportunities Where stageName = 'Closed Won') From Account Where Type = 'Customer - Direct'];

        for (account eachAccount : accWithOpportunities) {
            System.debug('Account name is '+eachAccount.Name+', annual revenue is '+eachAccount.AnnualRevenue);
            List<Opportunity> opps = eachAccount.Opportunities;
            for (opportunity eachOpp : opps) {
                System.debug(' Opportunity name '+eachOpp.Name+', opp amount '+eachOpp.Amount);
            }
            System.debug('--------------------');
        }
    }
}