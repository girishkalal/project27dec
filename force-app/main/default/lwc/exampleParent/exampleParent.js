import { LightningElement,track } from 'lwc';
export default class ExampleParent extends LightningElement {

  @track  parentValue="second value";
  handlerChange(){
    this.parentValue="click me";
  }
}