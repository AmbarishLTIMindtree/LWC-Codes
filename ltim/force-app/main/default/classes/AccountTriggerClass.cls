public class AccountTriggerClass {
	public static void insertAccountOwnership(List<Account> accounts){
        for(Account account:accounts){
            if(account.Industry == 'Education'){
                account.Ownership ='Public';
                // insert account;
        	}
        }
        
    }
}