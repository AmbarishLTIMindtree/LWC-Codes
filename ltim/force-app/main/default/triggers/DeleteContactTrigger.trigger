trigger DeleteContactTrigger on Contact (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isDelete && Trigger.isBefore){
        ContactTriggerClass.deleteContact(Trigger.old);
    }
}