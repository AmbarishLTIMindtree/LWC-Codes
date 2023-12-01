import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';

export default class Navigationcomponent extends NavigationMixin(LightningElement){
    handleNewAccount(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Account',
                actionName:'new'
            }
        })
    }
}