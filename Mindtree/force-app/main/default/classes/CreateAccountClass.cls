public class CreateAccountClass {
    
    @AuraEnabled
    public static void createAccount(String actName,String actPhone,String actWebsite ){
        Account newAccount=new Account();
        newAccount.Name=actName;
        newAccount.Phone=actPhone;
        newAccount.Website=actWebsite;
        insert newAccount;
    }
    
}