public class CampaignTriggerClass {
    
    public static void deleteCampaignRecord(List<Campaign> records){
        
        CampaignArchive__c newRecord;
        
        List<CampaignArchive__c> newRecords=new List<CampaignArchive__c>();
        
        for(Campaign record:records){
            newRecord=new CampaignArchive__c();
            newRecord.Name=record.name;
            newRecords.add(newRecord);
        }
        insert newRecords;
    }

}