import { LightningElement } from 'lwc';
import getCustomer from '@salesforce/apex/SearchCustomer.getcustomerDetails'

export default class Searchcustomer extends LightningElement {
    customerNameOrEmail;
    

    handleOnChangecustomerNameOrEmail(event){
        this.customerNameOrEmail=event.target.value;
        
    }
   

    clearData(){
        this.customerNameOrEmail = '';
        this.dispatchEvent(new CustomEvent('clearcustomer',null))
    }
    
    initiateSearch(){
        
        getCustomer({customerNameOrEmail:this.customerNameOrEmail}) // Promise call Internally
        
        .then(result=>{this.dispatchEvent(new CustomEvent('getcustomerdetails',{detail:result}))
    })
        .catch(error=>{console.log(error)})
      
    }
}