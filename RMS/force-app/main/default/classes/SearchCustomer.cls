public class SearchCustomer {
    @AuraEnabled(cacheable=true)
    public static List<Customer__c> getcustomerDetails(String customerNameOrEmail){
        customerNameOrEmail='%'+customerNameOrEmail+'%';
        List<Customer__c> customers=[SELECT Customer_Id__c,name,Email__c,Status__c FROM Customer__c 
                                        WHERE name LIKE : customerNameOrEmail OR 
                                        Email__c LIKE: customerNameOrEmail];
        return customers;
    }
}