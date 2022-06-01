public class AccountInfo {
    public void showAccounts() {
        List<Account> accList = [Select Name, (SELECT name, CloseDate FROM Opportunities where CloseDate > TODAY ) FROM account];
        for (account eachAccount : accList) {
            string Name = eachAccount.Name;
            System.debug(' Account name is '+Name);
            List<Opportunity> oppList = eachAccount.Opportunities;
            for (opportunity eachOpp : oppList) {
                System.debug(' Opportunity name is '+eachOpp.Name);
                System.debug(' Opportunity close date is '+eachOpp.CloseDate);
            }
            System.debug('-----------------');
        }
    }
}