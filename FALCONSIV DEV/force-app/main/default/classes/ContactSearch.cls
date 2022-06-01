public with sharing class ContactSearch {
    public static List<contact> searchForContacts(string str1, string str2) {
        List<Contact> cntList = [Select Id, name from Contact where lastName = :str1 AND MailingPostalCode = :str2];
                    
        return cntList;
    }
}