public without sharing class keyContactDetails{

//account controller class
@AuraEnabled(cacheable=true)
public static list<keyContact__c> getRelatedList(String recordId)
{
    List<keyContact__c> Conlist = [Select Name ,Email__c, Mobile__c, Type__c
                                  from keyContact__c
                                  where AccountId__c=: recordId ];
    return Conlist;
}

}