public with Sharing class TaskGenarator {
    @auraenabled
    public static task genrateTask(String Subject,string Priority,String Status)
    {
        task t=new task();
        t.Subject=Subject;
        t.Priority=Priority;
        t.Status=Status;
        t.OwnerId=userInfo.getUserId();
        insert t;
        return t;
    }
    
    
}

/*public class TaskWrapper
{
@auraenabled
public string Subject{get;set;}
@auraenabled
public string Priority{get;set;}
@auraenabled
public string Status{get;set;}
@AuraEnabled
public List<Task> TaskItem { get; set; }
}
@auraenabled
public static void createTask(string wrapperText)
{

TaskWrapper wrapper=(TaskWrapper)JSON.deserialize(wrapperText,TaskWrapper.class);
system.debug('wrapper:'+wrapper);
if(wrapper!=null)
{
task t=new task();
t.Subject=wrapper.Subject;
t.Subject=wrapper.Subject;
t.Subject=wrapper.Subject;
insert t;


}
}
}
}

   dosave:function(component, event, helper) {
          
        var action = component.get("c.genrateTask");
        
          action.setParams({'taskObj':component.get('v.taskObject')});
          
          action.setCallback(this,function(data){
             component.set('v.taskId',data.getReturnValue()) 
          });
          $A.enqueueAction(action);
          
},








*/

//////////////////////////CMP/////////
//
//
/*@AuraEnabled
public static void genrateTask(Id recordId)
{
task newtask=new task();



}

}*/
//
///////
//
//
//
//
///////////
/*
* <aura:attribute name="task" type="task" />
<aura:handler name="init" value="{!this}" action="{!c.call}" />

<aura:attribute name="isCallPopup" type="boolean" default="false"/>
<aura:attribute name="isMeetingPopup" type="boolean" default="false"/>
<lightning:button label="Call" title="Call action" onclick="{! c.callpopup }"/>
<lightning:button label="Meeting" title="Meeting action" onclick="{! c.meetingpopup }"/>




<aura:if isTrue="{!v.isCallPopup}"> 
<section role="dialog" tabindex="-1" aria-labelledby="modal-heading-01" aria-modal="true" aria-describedby="modal-content-id-1" class="slds-modal slds-fade-in-open">
<div class="slds-modal__container">
<lightning:card>
<h1>NEW CALL</h1>
<lightning:input name="Subject" label="Subject" required="true" />
<lightning:input type="date" name="date" label="Activity Date"/>
<lightning:select name="Priority" label="Priority" required="true">
<option value="">choose one...</option>
<option value="{!v.task.Priority}">Normal</option>
<option value="{!v.task.Priority}">High</option>
<option value="{!v.task.Priority}">Low</option>
</lightning:select>
<lightning:select name="Status" label="Status" required="true">
<option value="">choose one...</option>
<option value="{!v.task.Status}">Not Started</option>
<option value="{!v.task.Status}">In Progress</option>
<option value="{!v.task.Status}">Completed</option>
<option value="{!v.task.Status}">Waiting on someone else</option>
<option value="{!v.task.Status}">Deferred</option>
</lightning:select>
<lightning:input type="textArea" name="Comments" label="Comments"/>
<footer class="slds-modal__footer">
<lightning:button variant="neutral"
label="Cancel"
title="Cancel"
onclick="{! c.CanclePopUp }"/> 
</footer> 
</lightning:card>                
</div>
</section>

</aura:if>

<aura:if isTrue="{!v.isMeetingPopup}">  
<section role="dialog" tabindex="-1" aria-labelledby="modal-heading-01" aria-modal="true" aria-describedby="modal-content-id-1" class="slds-modal slds-fade-in-open">
<div class="slds-modal__container">
<lightning:card>
<h1>NEW MEETING</h1>
<lightning:input name="Subject" label="Subject" required="true"  value="{!v.task.Subject}"/>
<lightning:input type="date" name="date" label="Activity Date"/>
<lightning:select name="Priority" label="Priority" required="true" value="{!v.task.Priority}">
<option value="">choose one...</option>
<option value="1">Normal</option>
<option value="2">High</option>
<option value="3">Low</option>
</lightning:select>
<lightning:select name="Status" label="Status" required="true" value="{!v.task.Status}">
<option value="">choose one...</option>
<option value="1">Not Started</option>
<option value="2">In Progress</option>
<option value="3">Completed</option>
<option value="4">Waiting on someone else</option>
<option value="5">Deferred</option>
</lightning:select>
<lightning:input type="textArea" name="Comments" label="Comments"/>
<footer class="slds-modal__footer">
<lightning:button variant="neutral"
label="Cancel"
title="Cancel"
onclick="{! c.CanclePopUp }"/>

</footer> 
</lightning:card>                              
</div>
</section>
</aura:if>
*/