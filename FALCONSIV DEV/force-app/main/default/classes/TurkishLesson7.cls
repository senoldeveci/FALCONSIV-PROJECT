public class TurkishLesson7 {
    //name'i parametre olarak alan ve o name ile bir account create eden bir method
    public static void createAccount(string name1, decimal annualRev) {
        Account acc1 = new Account();
        acc1.name = name1;
        acc1.AnnualRevenue = annualRev;
        System.debug(acc1);
        insert acc1;

        //Bu accounta bagli 5 tane contact create etsin. First Name account name olsun, last name Contact1,2,3,4,5 seklinde olsun

        List<Contact> cntList = new List<Contact>();

        for (Integer i = 1; i <= 5; i++) {
            contact cnt = new Contact();
            cnt.FirstName = acc1.Name;
            cnt.LastName = 'Contact'+i;
            cnt.AccountId = acc1.Id;
            cntList.add(cnt);
        }
        if (!cntList.isEmpty()){
            insert cntList;
        }
       
    }
}