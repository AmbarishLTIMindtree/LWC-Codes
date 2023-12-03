import { LightningElement } from 'lwc';

export default class Lifecycle extends LightningElement {
    constructor(){
        super();
        alert('Constructor Called');
    }
    connectedCallback(){
        alert('Connected Callback Called');
    }
    renderedCallback(){
        alert('Rendered Callback Called');
    }
    disconnectedCallback(){
        alert('Disconnected Callback Called');
    }
    errorCallback(){
        alert('Error Callback Called');
    }

    // Ambarish
}