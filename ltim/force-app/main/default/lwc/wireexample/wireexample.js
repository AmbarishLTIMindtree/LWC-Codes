import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import NameField from '@salesforce/schema/Account.Name';
import PhoneField from '@salesforce/schema/Account.Phone'

export default class Wireexample extends LightningElement {
    @api recordId;
    @wire(getRecord, {recordId:'$recordId', fields:[NameField, PhoneField]}) record;

    get name(){
        return this.record.data ? getFieldValue(this.record.data, NameField): '';
    }
    get Phone(){
        return this.record.data ? getFieldValue(this.record.data, PhoneField):'';
    }
};