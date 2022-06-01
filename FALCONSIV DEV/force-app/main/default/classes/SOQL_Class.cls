public class SOQL_Class {
    public static void account_SOQL(){
        List<Account> phoneNotNull = [Select Name, Phone From Account Where Phone !=NULL];
        System.debug(' Telefon numarasi olan accountlarin listesi = '+phoneNotNull);

        List<Account> nameEndsWithA = [Select Name From Account Where Name Like '%A'];
        System.debug(' Ismi a ile biten accountlarin listesi = '+nameEndsWithA);
    }

    public static void account_SOQL_2(string str1) {

        List<Account> containsStr1 = [Select Name From Account];
        List<string> accNameList = new List<string>();
        for (account eachName : containsStr1) {
            string accName = eachName.Name;
            if (accName.contains(str1)){
                accNameList.add(accName);   
            }
        }

        if (accNameList.size()>0) {
            system.debug(' Isminin icerisinde '+str1+' gecen hesaplar = '+accNameList);
        } else {
            System.debug(' Isminin icerisinde '+str1+' gecen herhangi bir hesap yok!!!');
        }
        
    }

    public static void contact_SOQL() {
        List<Contact> phoneEmpty = [Select Name, Phone, HomePhone From Contact WHERE Phone=NULL AND HomePhone=NULL];
        System.debug(' Phone ve HomePhone degeri bos olan hesaplar = '+phoneEmpty);
    }

    public static void account_SOQL_3(){
        List<Account> annualRevenue = [Select AnnualRevenue From Account WHERE AnnualRevenue!=null ];
        decimal sum = 0;
        for (account i : annualRevenue) {
            decimal dec1 = i.AnnualRevenue;
            sum = sum+dec1;
        }
        System.debug(' AnnualRevenue degerleri bos olmayan hesaplarin yillik gelir toplamlari = '+sum);
    }
}