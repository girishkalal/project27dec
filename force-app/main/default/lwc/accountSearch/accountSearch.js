import { LightningElement,wire,track, api } from 'lwc';
import searchAccountsName from '@salesforce/apex/SearchAccount.searchAccountsName' ;
export default class accountSearch extends LightningElement
{
    accountName='';
    @track accountList =[];
    @wire(searchAccountsName,{accname:'$accountName'})
    retrieveAccouts({data})
    {
        if(data)
        {
            this.accountList = data;
        }
        
    }
    handleKeyChange(event)
{
    
    const searchString= event.target.value;
    
        this.accountName =searchString;
    
}
    
    }