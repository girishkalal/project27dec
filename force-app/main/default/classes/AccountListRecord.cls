public class AccountListRecord {
@AuraEnabled
    public Static list<Account> getAccountList(){
        list<Account> AccountList=new list<Account>([select Id,Name,Phone,Email__c from Account]);
        return AccountList;
    }
}