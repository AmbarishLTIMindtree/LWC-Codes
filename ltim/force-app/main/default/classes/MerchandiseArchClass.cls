public class MerchandiseArchClass {
    
    public static void insertMerchandiseArch(List<Marchandise__c> records){
        Merchandise_Archive__c newRecord=new Merchandise_Archive__c();
        newRecord.name=records[0].name;
        newRecord.MerchandiseArchive_Desc__c=records[0].Merchandise_Desc__c;
        newRecord.MerchandiseArchive_Stock__c=records[0].Merchandise_Stock__c;
        newRecord.MerchandiseArchive_Price__c=records[0].Merchandise_Price__c;
        insert newRecord;
    }

}