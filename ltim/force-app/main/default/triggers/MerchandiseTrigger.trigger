trigger MerchandiseTrigger on Marchandise__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {

    if(Trigger.isDelete && Trigger.isBefore ){
        // call the class
        MerchandiseArchClass.insertMerchandiseArch(Trigger.old);
    }

}