import { LightningElement } from 'lwc';
import createAccount from '@salesforce/apex/CreateAccountClass.createAccount';
// import NAME_FIELD from '@salesforce/schema/Account.Name';
// import PHONE_FIELD from '@salesforce/schema/Account.Phone';
// import WEBSITE_FIELD from '@salesforce/schema/Account.Website'; 


export default class CreateAccount extends LightningElement {
    accountname;
    accountphone;
    accountwebsite;

    // record={
    //     Name:this.accountname,
    //     Phone:this.accountphone,
    //     Website:this.accountwebsite,
    // }

    handleOnChangeName(event){
        this.accountname=event.target.value;
        
    }
    handleOnChangePhone(event){
        this.accountphone=event.target.value;
        
    }
    handleOnChangeWebsite(event){
        this.accountwebsite=event.target.value;
        
    }

    handleChange(event){
        console.log(this.accountname);

        createAccount({actName:this.accountname,actPhone:this.accountphone,actWebsite:this.accountwebsite})
        
        .then(result=>{alert('Record Inserted Successfully')})
        .catch(error=>{console.log(error)});
        alert('account is passed')
    }

}