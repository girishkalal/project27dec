import { api, LightningElement,track,wire } from 'lwc';
import searchAccountsName from '@salesforce/apex/SearchAccount.searchAccountsName';
export default class LwcComponent extends LightningElement 
{

recordId;
name;
@wire(searchAccountsName, {recordId :'$recordId'})
listAccount({data,error})
{
    if(data)
    {
        this.name=data;
        console.log('-ssssssss-'+this.name);
    }
    if(error){
        console.log('-----sss-----'+error);
        console.log('-serrorss-'+this.name);
    }

    
}


        handleSelectedLookup(event) {
                this.recordId = event.detail;   
            }
            
    }


    
    

