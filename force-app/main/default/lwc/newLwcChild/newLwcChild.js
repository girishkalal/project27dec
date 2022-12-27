import { LightningElement,wire,api, track } from 'lwc';
export default class NewLwcChild extends LightningElement {
    @api accountList=[];
    @api accountName;
   @track anchorVal;   
        getAccName(event) {

            this.anchorVal=event.currentTarget.dataset.value;
            const selectedEvent= new CustomEvent('valueselected', {anchorVal});
            this.dispatchEvent(selectedEvent);
            console.log('child ',this.selectedEvent);
  

    }
    removePill(event){

        this.anchorVal=null;
    }
    }

