import { LightningElement } from 'lwc';

export default class Lifecycle extends LightningElement {
    constructor(){
        super();
        alert('called from parent')
    }
    connectedCallback(){
        alert('called from parent connected call back ')
    }
    renderedCallback(){
        alert('called parent rendered call back')
    }
    disconnectedCallback(){
        alert('called from parent disconnected call back')
    }
}