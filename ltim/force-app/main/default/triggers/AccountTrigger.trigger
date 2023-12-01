trigger AccountTrigger on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isInsert && Trigger.isBefore){
        AccountTriggerClass.insertAccountOwnership(Trigger.new);
    }
}