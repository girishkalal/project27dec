import { LightningElement,wire,track,api } from 'lwc';
import searchAccountsName from '@salesforce/apex/SearchAccount.searchAccountsName';
import searchKeyContactName from '@salesforce/apex/SearchAccount.searchKeyContactName';
export default class NewLwcParent extends LightningElement {

    accountName='';
    @track accountList=[];
    @track keyContact=[];
    @track recordId;
    @track childObj = [];
//   @wire(searchAccountsName,{searchKey :'$accountName'})
//   accountdata({data}){
//     if(data){
//         this.accountList=data;
//     }
//   }

searchKeyContact(event){
     this.childObj = event.detail;
     console.log('---------',JSON.stringify(this.childObj));
    
     searchKeyContactName({ recordId : this.recordId })
    .then(result => {
        this.keyContact = result;
    })
   
   
}
searchName(event){
this.accountName=event.target.value;
searchAccountsName({ searchKey : this.accountName })
.then(result => {
    this.accountList = result;
console.log('parent',JSON.stringify(this.accountList));
})
}   
}