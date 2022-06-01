public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate() {
        List<Account> listAcc = [Select id, name, description from Account ORDER BY CreatedDate desc LIMIT 150];

        List<Account> updateAcc = new List<Account>();

        for (account eachAcc : listAcc) {
            eachAcc.Name += ' - updated';
            eachAcc.NaicsDesc = 'Updated via bulk DML';
            updateAcc.add(eachAcc);
        }

        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
    }
}