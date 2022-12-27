import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  firstName = '';
  changeHandler(event) {
    this.firstName = event.target.value;
  }
  lastName='';
  changeHandler1(event) {
    this.lastName = event.target.value;
  }
}