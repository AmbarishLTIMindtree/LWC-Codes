import { LightningElement, wire } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails';

export default class Wirefunction extends LightningElement {
    error;
    actList;
    accountName;

    handleOnChangeAccountName(event){
        this.accountName=event.target.value;
    }
    @wire(getAccount,{accountName:'$accountName'})
    accountfun({error,data}){
        if(data){
            this.actList=data;
            this.error="undefined";
        }else if(error){
            this.error=error;
            this.actList='undefined';
        }
    }
}