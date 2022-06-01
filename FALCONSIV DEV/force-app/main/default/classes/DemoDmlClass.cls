public class DemoDmlClass {
    public DemoDmlClass() {
        System.debug('============================================');
        System.debug('Welcome to the world of SOQL. Please enter the key character to search. ');
    }

    public void dmInsert(string keyCharacter) {
        System.debug(' Input ::');
        System.debug(keyCharacter);
        System.debug(' Output ::');
        List<Account> accList = [Select Id, Name FROM Account Where name LIKE :'%'+keyCharacter+'%'];
        if (accList.size()>0) {
            for (account eachAcc : accList) {
                System.debug(eachAcc.Id+ ' : '+eachAcc.Name);
                Contact newCnt = new Contact();
                String accName = eachAcc.Name;
                newCnt.LastName =accName;
                newCnt.AccountId = eachAcc.Id;
                insert newCnt;
                System.debug(accName+' copied from account');
                System.debug('-------------------');
            }
        } else {
            System.debug(' There is no account found that includes '+keyCharacter+' in it. Please enter a different key character');
        }
    }
}