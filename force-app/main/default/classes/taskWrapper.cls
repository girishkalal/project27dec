public with Sharing class taskWrapper {
    public class wrapperTask{
        @auraenabled
        public  String Subject{get;set;}
        @auraenabled
        public  String Priority{get;set;}
        @auraenabled
        public  String Status{get;set;}
        @auraenabled
        public ID recordId{get; set;}
    }
    // public Static wrapperTask obj=new wrapperTask();
    
    
    @AuraEnabled
    public static task genrateTask(String wr){
        System.debug('wr==========='+wr);
        wrapperTask wrapperTask =(wrapperTask)JSON.deserialize(wr,wrapperTask.class);
        
        Task t = new Task();
        t.Subject = wrapperTask.Subject;
        t.Priority = wrapperTask.Priority;
        t.Status = wrapperTask.Status;
        t.WhatId = wrapperTask.recordId;
        INSERT t;
        return t;
        
    } 
} 
/*   @AuraEnabled
public static void taskCreate(){
task t=new task();
t.Subject=obj.Subject;
t.Status=obj.Status;
t.Priority=obj.Priority;
t.OwnerId=userInfo.getUserId();
insert t;
}

*/


/*







let book = {
Subject:component.find("Suject").get("v.value"),
Priority:component.find("Prority").get("v.value"),
Status:component.find("Sttus").get("v.value")
};
var action=component.get("c.genarateTask");

action.setParams({
wrapper : JSON.stringify(book)
})






public class insertWithWrapperController {

@AuraEnabled 
public static void makeAccount(account oAcc){
system.debug('oAcc---------->'+ oAcc );
wrapperClass obj = new  wrapperClass(oAcc);
obj.InsertRecord();
}

Public class wrapperClass{
@AuraEnabled Account acc {get;set;}

public wrapperClass(Account objAcc){
this.acc = objAcc;
}

public void InsertRecord(){
system.debug('acc--->' + acc);
insert acc;  
}    
}
}

*/


/*
@auraenabled
public static genarateTask myAction() 
{
genarateTask sobjectwrapper = new genarateTask();
Task newTask = new Task();
newTask=[select subject,priority,status from task];
genarateTask wrap = new genarateTask();
wrap.OwnerId=newTask.AccountId;
wrap.subject=newTask.subject;
wrap.Priority=newTask.Priority;
wrap.Status=newTask.Status;
insert newTask;
return wrap;
} 
public class genarateTask{
@AuraEnabled
public String Subject{get;set;}
@AuraEnabled
public String Priority{get;set;}
@AuraEnabled
public String Status{get;set;}
@AuraEnabled
public String OwnerId{get;set;}
}	
}










*/