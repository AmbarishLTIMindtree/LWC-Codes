import { LightningElement } from 'lwc';

export default class Lifecycle2 extends LightningElement {
    constructor(){
        super();
        alert('constructor call back')
    }
    connectedCallback(){
       
        alert('connected call back')
    }
    renderedCallback(){
        
        alert('render call back')
    }
    disconnectedCallback(){
        
        alert('dissconnected call back')
    }
    errorCallback(){
        
        console.log('error call back')
    }
}