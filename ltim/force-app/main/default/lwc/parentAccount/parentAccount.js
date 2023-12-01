import { LightningElement } from 'lwc';

export default class ParentAccount extends LightningElement {
    searchDetail=[];
    handleAccount(event){
        this.searchDetail=[];
        alert('See the Magic, I called from child')
        alert(event.detail);
        try{
            event.detail.forEach(element => {
                var accData={
                    id:element.Id,
                    name:element.Name
                }
                this.searchDetail.push(accData);
            });
        }catch(e){
            console.log(e);
        }
    }
}