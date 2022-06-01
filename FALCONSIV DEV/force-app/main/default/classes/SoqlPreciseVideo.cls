public class SoqlPreciseVideo {
    public static void allContacts() {
        List<Contact> contactList = [Select name, phone From Contact];
        System.debug(contactList);
        System.debug(contactList.size());
        System.debug('10th contact in the list = '+contactList.get(9));
        contactList.sort();
        System.debug(contactList);
        contactList.clear();
        System.debug(contactList.isEmpty());
    }

    public static void getLatestCreatedContact() {
        List<Contact> contactList2 = [Select name, email, CreatedDate from contact ORDER BY CreatedDate DESC LIMIT 1];
        System.debug(contactList2);
        Contact latestCreated = [Select name, email from contact ORDER BY CreatedDate DESC LIMIT 1];
        System.debug(' Name = '+latestCreated.Name);
        System.debug(' Email = '+latestCreated.Email);
    }

    public static void contactsWithEmail() {
        List<Contact> contactList3 = [Select name, email from Contact Where Email != NULL];
        for (contact eachContact : contactList3) {
            string name1 = eachContact.Name;
            string nameUppercase = name1.toUpperCase();
            System.debug(nameUppercase);
            // String email = eachContact.Email;
            // string emailUppercase = email.toUpperCase();
            System.debug(eachContact.Email.toUpperCase());
            System.debug('---------------');
        }
    }
}