public with sharing class NewAccountList {
     @AuraEnabled(cacheable=true)
    public Static list<Account> getAccountList(){
        list<Account> AccountList=new list<Account>([select Id,Name,Phone,Email__c from Account]);
        return AccountList;
    }
}