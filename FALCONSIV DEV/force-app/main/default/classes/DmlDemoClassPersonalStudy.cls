public class DmlDemoClassPersonalStudy {
    public static void dmlMultipleRecordUpdate() {
        List<Account> listAcc = [Select Id, name, description from Account ORDER BY CreatedDate Desc Limit 150 ];
        List<Account> updatedAccounts = new List<Account>();
        for (account eachAcc : listAcc) {
            eachAcc.name += ' updated bulk records';
            updatedAccounts.add(eachAcc);
        }
        if (!updatedAccounts.isEmpty()) {
            delete updatedAccounts;
        }
    }
}