public class AccountHandlerInfo {
    public static List<Account> insertNewAccount(List<String> list1) {
        List<Account> accList = new List<Account>();
        for (string eachStr : list1) {
            Account acc1 = new Account();
            acc1.Name = eachStr;
            accList.add(acc1);
        }
        insert accList;
        return accList;
    }
}