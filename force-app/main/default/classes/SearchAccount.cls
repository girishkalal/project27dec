public with sharing class SearchAccount
{
    @AuraEnabled(cacheable=true)
    public static List<Account> searchAccountsName(String searchKey)
    {
        String key='%'+searchKey+'%';
    
        return [SELECT Id,Name FROM Account WHERE Name LIKE: key];
    

    }

    @AuraEnabled(cacheable=true)
    public static List<keyContact__c> searchKeyContactName(Id recordId)
    {
        
    
        return [SELECT Name FROM keyContact__c WHERE Id =: recordId];
    

    }
    //  @AuraEnabled
    // public static void setObjectToRecentItems(Id recordId) {
    //     if (!String.isBlank(recordId)) {
    //         Schema.SObjectType sObjectType = recordId.getSobjectType();
    //         String queryString = String.format('SELECT Id, Name FROM {0} WHERE Id =: recordId FOR VIEW', new List<Object>{sObjectType});
    //         Database.query(queryString);
    //     }
    // }
}