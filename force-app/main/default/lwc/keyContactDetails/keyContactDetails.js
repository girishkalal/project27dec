import { LightningElement, wire, api, track} from 'lwc';

import getRelatedList from '@salesforce/apex/keyContactDetails.getRelatedList';

/* const FIELDS = [
    'Name',
    'Mobile',
    'Email',
    'type',
   
];


export default class keyContactDetails extends LightningElement {
    @api recordId;
    @track allList = [];
    @wire(getRecord, { recordId: '$recordId', fields: FIELDS })
    record;

    get Name() {
        return this.record.data.fields.Name.value;
    }

    get Phone() {
        return this.record.data.fields.Mobile__c.value;
    }
    get Email() {
        return this.record.data.fields.Email__c.value;
    }
    get type() {
        return this.record.data.fields.type__c.value;
    }


}*/
export default class keyContactDetails extends LightningElement 
{
    @api recordId;
     records=[];

    @wire(getRelatedList, {recordId: '$recordId'})
    keyContact({data}){
        if(data){
            this.records = data;
            }
           }

        }