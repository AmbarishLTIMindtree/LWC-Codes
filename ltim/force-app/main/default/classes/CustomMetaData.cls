public class CustomMetaData {
    
    public void customMetaDataMethod(){
        MyCustomMetadata__mdt cmd=MyCustomMetadata__mdt.getInstance('UpdateTriggerStatus');
        System.debug('Value of Custom Meta Data : '+cmd);
        if(cmd.isActive__c == true){
            System.debug('True');
        }else{
            System.debug('False');
        }
    }

}