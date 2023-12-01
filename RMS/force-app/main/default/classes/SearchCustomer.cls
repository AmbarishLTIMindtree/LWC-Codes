public class SearchCustomer {
    @AuraEnabled(cacheable=true)
    public static List<Customer__c> getcustomerDetails(String customerName){
        customerName='%'+customerName+'%';
        List<Customer__c> customers=[SELECT id,name FROM Customer__c 
        WHERE name LIKE : customerName OR Email__c LIKE : customerName];
        return customers;
    }
}