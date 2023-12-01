public class MerchandiseArchBulkify {
    
    public static void insertMerchandiseBulkify(List<Marchandise__c> records){
        Merchandise_Archive__c newRecord;
        List<Merchandise_Archive__c> newRecords=new List<Merchandise_Archive__c>();
        
        for(Marchandise__c record:records){
            newRecord = new Merchandise_Archive__c();
            newRecord.name = record.name;
            newRecords.add(newRecord);
        }
        insert newRecords;
    }

}