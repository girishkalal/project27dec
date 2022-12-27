@isTest
public class KeyContactTest {
    @testSetup static void methodName() {
        List<Account>newAccountList= new List<Account>();
        for(Integer i=1;i<=5;i++)
        {
            newAccountList.add(new Account(RecordTypeId= Schema.SObjectType.Account.getRecordTypeInfosByName().get('Prospect_Company').getRecordTypeId(),name='girish'+i,Email__c='defult@gmail.com',Phone='+911234567890'));
            newAccountList.add(new Account(RecordTypeId= Schema.SObjectType.Account.getRecordTypeInfosByName().get('Ignite_Company').getRecordTypeId(),name='Abishek'+i,Email__c='defult@gmail.com',Phone='+911234567890'));
            newAccountList.add(new Account(RecordTypeId= Schema.SObjectType.Account.getRecordTypeInfosByName().get('Sales').getRecordTypeId(),name='logesh'+i,Email__c='defult@gmail.com',Phone='+911234567890'));
        }
        INSERT newAccountList;
    }
    @istest
    static void TestAfterInsert(){
        List<keyContact__c> keyContactList=([SELECT Id ,name,type__c 
                                             FROM keyContact__c]);
        System.assertEquals(15, keyContactList.size(),'wrong');
    }
    
    @istest
    static void TestOnBatch(){
        Test.startTest();
        KeyContactBatch Kb=new KeyContactBatch();
        Database.executeBatch(Kb);
        test.stopTest();
        List<keyContact__c> keyConList=[SELECT Id, Notification__c 
                                        FROM keyContact__c 
                                        WHERE Notification__c=true];
        System.assertEquals(15,keyConList.size(),'wrong');
        
    }
}