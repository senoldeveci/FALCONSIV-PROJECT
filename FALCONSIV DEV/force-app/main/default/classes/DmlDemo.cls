public with sharing class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account newAcc = new Account();
        newAcc.Name = 'SoftInnovas';
        newAcc.Type = 'Prospect';
        newAcc.CustomerPriority__c = 'Medium';
        insert newAcc;
        system.debug(newAcc);

    }

    public static void dmlInsertDemo_cstObj() {
        Salesforce_Project__c obj1 = new Salesforce_Project__c();
        obj1.Project_Name__c = ' Learn DML';
        obj1.Status__c = 'New';
        insert obj1;
        System.debug(obj1);
    }

    public static void dmlUpdateDemo_1() {
        Account obj2 = new Account();
        obj2.Name = 'S';
        insert obj2;
        System.debug(' inserted = '+obj2);
        obj2.Name = 'Salesforce Inc.';
        update obj2;
        System.debug(' updated = '+obj2);
    }

    public static void dmlUpdateDemo_3() {
        Account acc1 = [Select name from Account where Name = 'SoftInnovas' ORDER BY CreatedDate DESC LIMIT 1];
        acc1.Name = 'SoftInnovas Inc.';
        update acc1;
        System.debug(' updated account = '+acc1);
    }

    public static void dmlInsertDemo_2() {
        Account acc = [Select name from Account where Name = 'SoftInnovas Inc.' limit 1];
        Contact cnt1 = new Contact();
        cnt1.LastName = 'Biden';
        cnt1.AccountId = acc.Id;
        insert cnt1;
        System.debug('inserted contact = '+cnt1);
    }

    public static void dmlUpdate() {
        
    }

    public static void dmlMultiRecordInsert_RightWay() {
        List<Account> accList = new List<Account>();

        Account acc1 = new Account();
        acc1.Name = 'bulk acc 1';
        accList.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'bulk acc 2';
        accList.add(acc2);

        Account acc3 = new Account();
        acc3.Name = 'bulk acc 3';
        accList.add(acc3);

        insert accList;

    }
}