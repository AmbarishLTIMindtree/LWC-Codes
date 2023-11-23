trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isUpdate && Trigger.isBefore){
        OpportunityTriggerClass.changeClosedWon(Trigger.old,Trigger.new);
        
        }
}