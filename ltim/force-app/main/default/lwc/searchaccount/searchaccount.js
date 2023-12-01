import { LightningElement } from 'lwc';
import getAccount from '@salesforce/apex/SearchAccountInfo.getAccountDetails';

export default class Searchaccount extends LightningElement {
    // formData={
    //     accountName:"",
    //     accountPhone:"",
    //     billingStreet:"",
    //     billingCity:"",
    //     billingState:"",
    //     billingZipcode:""
    // }

    // handleInputChange(formData,event){

    // }

    accountName;
    accountPhone;
    billingStreet;
    billingCity;
    billingState;
    billingZipcode;

    handleOnChangeAccountName(event){
        this.accountName=event.target.value;
       // alert(this.accountName)
    }
    handleOnChangeAccountPhone(event){
        this.accountPhone=event.target.value;
        alert(this.accountPhone)
    }
    handleOnChangeBillingStreet(event){
        this.billingStreet=event.target.value;
        alert(this.billingStreet)
    }
    handleOnChangeBillingCity(event){
        this.billingCity=event.target.value;
        alert(this.billingCity)
    }
    handleOnChangeBillingState(event){
        this.billingState=event.target.value;
        alert(this.billingState)
    }
    handleOnChangeBillingZipcode(event){
        this.billingZipcode=event.target.value;
        alert(this.billingZipcode)
    }

    initiateSearch(){
        alert("I am ready to search for "+this.accountName);
        getAccount({accountName:this.accountName}) // Promise call Internally
        .then(result=>{this.dispatchEvent(new CustomEvent('getaccountdetails',{detail:result}))
    })
        .catch(error=>{console.log(error)})
    }
}