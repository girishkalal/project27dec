public class KeyContact {
    public static void AccountDetails(List<Account> accountList){ 
        //Querying the Account Details after insert   
        List <Account> acc=[SELECT Id, name, recordType.Name,Email__c
                            FROM Account
                            WHERE Account.Id in : accountList];
        // created KeyList to store All The keyContact values based on the Record type and insert An keycontact record
        List<keyContact__c>keyCreate=new List<keyContact__c>();   
        for(Account ac:acc){
            if(ac.recordType.Name=='Prospect_Company'){
                keyCreate.add(new keyContact__c(AccountId__c=ac.Id,Type__c='Prospect',name=ac.Name,FirstName__c=ac.Name,email__c=ac.Email__c)); 
            }
            else if(ac.recordType.Name=='Ignite_Company'){
                keyCreate.add(new keyContact__c(Type__c='Ignite',name=ac.Name,FirstName__c=ac.Name,AccountId__c=ac.Id,email__c=ac.Email__c));       
            }
            else if(ac.recordType.Name=='Sales'){
                keyCreate.add(new keyContact__c(Type__c='Sales',name=ac.Name,FirstName__c=ac.Name,AccountId__c=ac.Id,email__c=ac.Email__c));     
            }  
        } 
        INSERT keyCreate;
    }    
}