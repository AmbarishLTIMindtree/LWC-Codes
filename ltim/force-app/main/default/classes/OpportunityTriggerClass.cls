public class OpportunityTriggerClass {
    
     public static void changeClosedWon(List<Opportunity> oldRecords,List<Opportunity> newRecords){
         
         for(Opportunity newRecord:newRecords){
             for(Opportunity oldRecord:oldRecords){
                 if(newRecord.StageName=='Closed Lost' && oldRecord.StageName=='Closed Won'){
                     newRecord.NextStep='Escalated to Manager';
                 }
             }
         }
        
    }
    
}