public class BatchClass1 implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        String query='select id,name from account';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc,List<Account> act){
        for(Account a:act){
            a.name=a.name+' Apex Scheduler';
        }
        update act;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }

}