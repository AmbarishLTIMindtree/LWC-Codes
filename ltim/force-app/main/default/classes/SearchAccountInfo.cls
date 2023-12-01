public class SearchAccountInfo {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountDetails(String accountName){
        accountName='%'+accountName+'%';
        List<Account> accounts=[SELECT id,name FROM account WHERE name LIKE : accountName];
        return accounts;
    }
}