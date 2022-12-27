trigger OpportunityTrigger on Opportunity (before insert,after insert) {   
 if(trigger.isbefore){
        if(trigger.isInsert)
        {
            OpportunityTriggerHandler.beforeInsertOpportunity(trigger.new);
        }
}
     if(trigger.isAfter){
        if(trigger.isInsert)
        {
            OpportunityTriggerHandler.afterInsertOpportunity(trigger.new);
        }
}
}