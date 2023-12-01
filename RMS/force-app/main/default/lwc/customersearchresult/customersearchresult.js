import { LightningElement, api } from 'lwc';

const columns = [
    // { label: 'Customer Id', fieldName: 'id' },
    { label: 'Customer Name', fieldName: 'name'},
    { label: 'Customer Email', fieldName: 'email'},
];

export default class Customersearchresult extends LightningElement {
    columns = columns;
    @api searchresults=[];
}