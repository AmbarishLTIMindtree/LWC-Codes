import { LightningElement } from 'lwc';

export default class Createleads extends LightningElement {
    firstName;
    lastName;
    company;
    leadStatus;

    handleOnChangeFirstName(event){
        this.firstName=event.target.value;
    }
    handleOnChangeLastName(event){
        this.lastName=event.target.value;
    }
    handleOnChangeCompany(event){
        this.company=event.target.value;
    }
    handleOnChangeleadStatus(event){
        this.leadStatus=event.target.value;
    }
}