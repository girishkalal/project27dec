import { LightningElement ,api,track,wire} from 'lwc';


export default class ChildComponent extends LightningElement {
   

    @api name;
    @api variant = "label-hidden";
    @api fieldLabel;
    @api childObjectApiName;
    @api targetFieldApiName;
    @api value;
 

    handleChange(event) {
        let selectedEvent = new CustomEvent('valueselected', {detail: event.detail.value[0]});
        this.dispatchEvent(selectedEvent);

     
    }

   

}
