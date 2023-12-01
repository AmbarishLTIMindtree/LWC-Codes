trigger MerchandiseBulkify on Marchandise__c (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isDelete && Trigger.isBefore){
        MerchandiseArchBulkify.insertMerchandiseBulkify(Trigger.old);
    }

}