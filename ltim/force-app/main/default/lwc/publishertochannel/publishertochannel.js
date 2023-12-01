import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import { SAMPLE_MESSAGE_CHANNEL} from 'lightning/messageService/contactMessageChannel_c';

export default class Publishertochannel extends LightningElement {
    @wire(MessageContext)
    messageContext;

    publishMessage(){
        const message={
            recordId:'0015h00001VlFlBAAV',
            message:'Hello from Publisher'
        };
        publish(this.messageContext,SAMPLE_MESSAGE_CHANNEL,message);
    }

}