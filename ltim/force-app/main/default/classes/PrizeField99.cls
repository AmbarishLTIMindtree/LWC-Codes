public class PrizeField99 implements Database.Batchable<sObject> {
    
	public Database.QueryLocator start(Database.BatchableContext bc){
        String query='select id,name,Merchandise_Price__c from Marchandise__c';
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc,List<Marchandise__c> mer){
        for(Marchandise__c m:mer){
            m.Merchandise_Price__c=99;
        }
        update mer;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
}