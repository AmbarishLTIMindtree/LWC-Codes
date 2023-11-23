public class InvoiceTriggerClass {
    
    public static void createInvoiceArchive(List<Invoice__c> records){
        for(Invoice__c record:records){
            InvoiceArchive__c newInvoice=new InvoiceArchive__c();
            newInvoice.name=record.name;
            insert newInvoice;
        }
    }

}