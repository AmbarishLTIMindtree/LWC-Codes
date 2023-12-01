import { LightningElement, wire } from 'lwc';
import { subscribe, MessageContext } from 'lightning/messageService';
import SAMPLE_MESSAGE_CHANNEL from '@salesforce/messageChannel/contactMessageChannel_c';

export default class Subscribefromchannel extends LightningElement {
    @wire(MessageContext)
    MessageContext;
    message='Waiting for a message...';

    connectedCallback(){
        this.Subscribefromchannel();
    }
    Subscribefromchannel(){
        if(this.subscription){
            return;
        }
        this.subscription= subscribe(
            this.messageContext,
            SAMPLE_MESSAGE_CHANNEL,
            (data)=>{
                this.handleMessage(data);
            }
        );
    }
    handleMessage(message){
        this.message=`Received message':${message.message}(Record Id:${message.recordId})`
    }
}