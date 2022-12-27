import { LightningElement ,api,track,wire} from 'lwc';
export default class LwcChildComponent extends LightningElement {
    @api name;
    @api fieldLabel;
    @api childObjectApiName;
    @api targetFieldApiName;
    @api value;
 handleChange(event) {
        let selectedEvent = new CustomEvent('valueselected', {detail: event.detail.value});
        this.dispatchEvent(selectedEvent); 
      
         
}
}