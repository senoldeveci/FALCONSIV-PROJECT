public class AccountTriggerHandler {
    // public static void updateAccountDescription(List<account> accTriggerNew,
    //                                             List<Account> accTriggerOld,
    //                                             Map<Id,Account> accTriggerNewMap,
    //                                             Map<Id,Account> accTriggerOldMap ) {

    // }
    // public static void updateAccountDescription(List<Account> accTriggerNew,
    //                                             List<Account> accTriggerOld,
    //                                             Map<Id,Account> accTriggerNewMap,
    //                                             Map<Id,Account> accTriggerOldMap) {
        
    //     for (Account eachAcc : accTriggerNew) {
    //         boolean updateDesc = false;
    //         if (accTriggerOldMap==null&&eachAcc.Active__c=='Yes') {
    //             updateDesc = true;
    //         }else{
    //             eachAcc.Description = '';
    //         }
    //         if (accTriggerOldMap!=null) {
    //             if (eachAcc.Active__c=='Yes'&&
    //                 accTriggerOldMap.get(eachAcc.Id).Active__c!='Yes') {
    //                 updateDesc = true;
    //             } else {
    //                 eachAcc.Description = '';
    //             }
    //         }
    //         if (updateDesc) {
    //             eachAcc.Description = 'Account is now active.Enjoy!';
    //         }
    //     }
        
    // }

    // public static void updateVIPForAllContacts(List<account> accTriggerNew,
    //                                             List<Account> accTriggerOld,
    //                                             Map<Id,Account> accTriggerNewMap,
    //                                             Map<Id,Account> accTriggerOldMap ) {
        
    //     Set<Id> newSetOfId = new Set<Id>();
    //     for (Id eachId : accTriggerNewMap.keySet()) {
    //         if (accTriggerNewMap.get(eachId).VIP__c!=accTriggerOldMap.get(eachId).VIP__c) {
    //             newSetOfId.add(eachId);
    //         }
    //     }
    //     List<Contact> contactList = [Select id, name, VIP__c, AccountId from contact where AccountId IN :newSetOfId];
    //     for (Contact eachCnt : contactList) {
    //         eachCnt.VIP__c = accTriggerNewMap.get(eachCnt.AccountId).VIP__c;
    //     }
    //     if (!contactList.isEmpty()) {
    //         update contactList;
    //     } 
        
    // }

    // public static void updateVIPFieldsOnContacts(List<Account> accTriggerNew, List<Account> accTriggerOld, 
    //                                             Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {
    //     Set<Id> setOfId = new Set<Id>();
    //     for (Account acc : accTriggerNew) {
    //         if (acc.VIP__c!=accTriggerOldMap.get(acc.Id).VIP__c) {
    //             setOfId.add(acc.Id);
    //         }
    //     }
    //     List<Contact> cntList = [Select id, name, Account.Id, VIP__c from contact where account.Id IN :setOfId];
    //     for (contact cnt : cntList) {
    //         cnt.VIP__c = accTriggerNewMap.get(cnt.Account.Id).VIP__c;
    //     }
    //     if (!cntList.isEmpty()) {
    //         update cntList;
    //     }
    // }

//-----------------------------------------------------------------------------------
//     1. When the Annual revenue field value is reduced from the previous value then show the following
// message:
// ‘Annual Revenue for an account cannot be reduced’. And do not allow the user to save the record

    // public static void accountAnnualRevenueValidation(List<Account> accTriggerNew, Map<Id,Account> accTriggerOldMap) {
    //     for (account acc : accTriggerNew) {
    //         if (accTriggerOldMap.get(acc.id).AnnualRevenue > acc.AnnualRevenue ) {
    //             acc.AnnualRevenue.addError('annual Revenue for an account cannot be reduced');
    //         }
    //     }
    // }
//-------------------------------------------------------------------------------------

// 1. Whenever New Account Record is created then needs to create associated Contact Record
// automatically.
// account name as contact last name
// account phone as contact phone

    // public static void createContact(List<account>accTriggerNew) {
    //     List<Contact> cntList = new List<contact>();
    //     for (account acc : accTriggerNew) {
    //         contact cnt1 = new contact();
    //         cnt1.LastName = acc.Name;
    //         cnt1.Phone = acc.phone;
    //         cnt1.AccountId = acc.id;
    //         cntList.add(cnt1);
    //     }
    //     if(!cntList.isEmpty()){
    //         insert cntList;
    //     }
        
    // }
//------------------------------------------------------------------------------------------
// 2. Write a trigger on the Account when the Account is updated check all opportunities related to
// the account. Update all Opportunities Stage to close lost if stage name not already set to close
// won.
        // public static void updateStageName(List<account> accTriggerNew, Map<Id,Account> accTriggerOldMap) {
        //     Set<Id> idSet = new Set<Id>();
            
        //     if (accTriggerOldMap!=null && ) {
        //         for (account acc : accTriggerNew) {
        //             if (acc) {
                        
        //             }
        //         }
        //     }
                
        //     }
                
        //     }
        
        // List<Account> accTriggerNew = [Select id, name, (Select AccountId, stageName from opportunities) from account where Id IN (Select AccountId from opportunities) AND stagename!='Closed Won'];
        // for (account acc : accTriggerNew) {
            
        // }
//----------------------------------------------------------------------------------------------------------------

// When Account Phone field is updated then make sure its related contacts should get updated as
// below:
// ➔ Old phone from account to otherPhone in contact
// ➔ new phone from account to mobilePhone in contact

    // public static void UpdateContactPhoneNumber(List<Account> accTriggerNew,
    //                                             List<Account> accTriggerOld,
    //                                             Map<Id,Account> accTriggerNewMap,
    //                                             Map<Id,Account> accTriggerOldMap) {
        
    //     Set<Id> idSet = new Set<Id>();
    //     for (account acc : accTriggerNew) {
    //         if (acc.Phone!=accTriggerOldMap.get(acc.id).Phone) {
    //             idSet.add(acc.id);
    //         }
    //     }

    //     List<contact> cntList = [Select id,name, otherPhone, mobilePhone, AccountId from contact where AccountId IN :idSet];
    //     List<Contact> updatedCntList = new List<contact>();
    //     for (contact c : cntList) {
    //         c.OtherPhone = accTriggerOldMap.get(c.AccountId).phone;
    //         c.MobilePhone = accTriggerNewMap.get(c.AccountId).phone;
    //         updatedCntList.add(c);
    //     }
    //     update updatedCntList;
    // }
//--------------------------------------------------------------------------------------------------------
    // public static void updateAccountDescription(List<account> accTriggerNew,
    //                                             List<account> accTriggerOld,
    //                                             Map<id, account> accTriggerNewMap,
    //                                             Map<id, account> accTriggerOldMap){
    //     system.debug('inside handler method');
    //      for(account eachAcc: accTriggerNew){
    //         boolean updateDesc = false;
    //         if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         if(accTriggerOldMap != null){
    //             Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
    //             string oldAccountActive = oldAccount.Active__c;
    //             //check if active is updated
    //             //active is changed to 'Yes'
    //             if(eachAcc.Active__c == 'Yes' &&
    //                 oldAccountActive != 'Yes'
    //             ) {
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!';
    //         }
    //     }
    // }
    // public static void updateVipForAllAcontacts(list<account> accTriggerNew, list<account> accTriggerOld, 
    //                                 Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
    //         system.debug('update all contact\'s VIP field');
    //         set<id> setAccIds = new Set<id>();
    //         for(account eachAcc: accTriggerNew){
    //             if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
    //                 setAccIds.add(eachAcc.Id);
    //             }
    //         }

    //         List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

    //         for(contact eachContact : listContacts){
    //             Account newAccount = accTriggerNewMap.get(eachContact.account.id);
    //             boolean newAccVip = newAccount.Vip__c;

    //             eachContact.Vip__c = newAccVip;
    //         }
    //         if(!listContacts.isEmpty()){
    //             update listContacts;
    //         }
    // 
//-----------------------------------------------------------------------------------------------------------    
        // @future
        // public static void updateNumberOfContacts(Set<Id>) {
            
        // }
//=======================================================================================================
//Aynı isimde birden fazla Account oluşmasına müsade etmeyen bir trigger (triggerHandlerClass) tasarlayınız.
// 1. Get present account names with SOQL.
// 2. PUt the present account names in a list.
// 3. Compare the new created or updated acc names with the present account names list.
// 4. write the code to display error message
    public static void accountNameCheck(List<Account>accTriggerNew, Map<Id,account>accTriggerOldMap) {
        List<Account> accList = [Select id,name from account];
        List<string> presentNameList = new list<string>();
        for (account acc : accList) {
            presentNameList.add(acc.Name);
        }
        
        for (account a : accTriggerNew) {
            if (presentNameList.contains(a.name) && a.id!=accTriggerOldMap.get(a.id).Id) {
                a.name.addError('This accont name exists. Please enter a different account name');
            }
            if (presentNameList.contains(a.name)) {
                a.name.addError('This accont name exists. Please enter a different account name');
            }
        }
    }
//=======================================================================================================
// Bir Account oluştuğunda, o Account'a bağlı bir Opportunity ve bir Contact oluşturan bir trigger (triggerHandlerClass) tasarlayınız.
// 1. Account create edildiginde => trigger.isInsert
// 2. Account'a bagli opportunity ve contact child recordlari create edileceginden ID lazim => trigger.isAfter
// 3. trigger.new icin for each loop dongusu olustur ve dongu icinde accounta bagli opp ve contact olustur. opp ve contact id'leri acc id'ye esitle (acconta bagla) ve listemize add yap.
// 4. Listeyi DML insert yap.

    public static void crateOppAndContact(List<account>accTriggerNew) {
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> cntList = new List<Contact>();
        for (account eachAcc : accTriggerNew) {
            for (Integer i = 0; i < 10; i++) {
                contact c = new Contact (LastName = eachAcc.Name+'-'+i, AccountId=eachAcc.id);
                cntList.add(c);
                opportunity opp = new opportunity (Name = eachAcc.Name+'-'+i, StageName = 'Initiate Transfer', CloseDate = date.today().addDays(30), AccountId=eachAcc.id);
                oppList.add(opp);
                }
        }
        insert oppList;
        insert cntList;
    }
//=========================================================================================================
}