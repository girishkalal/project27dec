public class OpportunityTriggerHandler {
   
    public static void beforeInsertOpportunity(List<opportunity> newList){
    Id recordDataId=Schema.SObjectType.Opportunity.getRecordTypeInfosByName().get('New Business').getRecordTypeId();
   	if(GeneralCustomSetting__c.getInstance().Allow_Me_To_FollowUp__c==true){ 
       for(Opportunity opport:newList){
                    
                    if(opport.recordTypeid == recordDataId && opport.Type=='New Customer'){
                        opport.StageName='Closed Won';
                        opport.CloseDate=system.today(); 
                    } 
                }
   }
        else{
            throw new AuraHandledException('Cannot be followed up: Please check the General Custom Setting.......! ');
        }
    }
    
    public static void afterInsertOpportunity(List<opportunity> newList){
         Id recordDataId=Schema.SObjectType.Opportunity.getRecordTypeInfosByName().get('New Business').getRecordTypeId();
         List<Task> tList = new List<Task>();
        for(Opportunity opport:newList){
            
         if(opport.Type=='New Customer' && opport.recordTypeid == recordDataId && opport.NextStep!=null){
                        if( opport.NextStep.toLowerCase()=='follow up'){
                             task newTask = new task();
                            newTask.WhatId = opport.Id;
                            newTask.Subject = 'Follow up task';
                            newTask.Status = 'In Progress';
                            newTask.ActivityDate = system.today()+7;
                            tList.add(newTask);
                            
                        }
                        else{
                            task newTask = new task();
                            newTask.Subject = ' closed won';
                            newTask.Status = 'In Progress';
                            newTask.ActivityDate = system.today()+7;
                            newTask.WhatId=opport.Id;
							tList.add(newTask);                            
                        }
                        
                    }
                }
        if(tList.size()>0){
             INSERT tList;
        }
            
            
    }
    }