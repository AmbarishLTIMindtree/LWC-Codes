trigger InvoiceTrigger on Invoice__c (before insert,after insert,before delete,after delete,before update,after update,after undelete) {
    If(Trigger.isDelete && Trigger.isBefore){
        InvoiceTriggerClass.createInvoiceArchive(Trigger.old);
    }
}