public class SOSLDemo {
    
    public void searchText(){
        List<List<sObject>> searchedText=[find 'gene' in all fields returning Contact(id,name),Account(id,name),Case];
        List<Contact> contacts=searchedText[0];
        List<Account> accounts=searchedText[1];
        List<Case> case1=searchedText[2];
        
        if(contacts.size()>0){
            for(Contact contact:contacts){
                System.debug('ID = '+contact.id+' Contact Name = '+contact.name);
            }
        }
        if(accounts.size()>0){
            for(Account account:accounts){
                System.debug('ID = '+account.id+' Account Name = '+account.name);
            }
        }
        
        List<List<sObject>> a = [find 'gene' in all fields returning contact, Account];
        List<Contact> con = a[0];
        List<Account> act = a[1];
        
        for(Case c:case1){
            System.debug(c);
        }        
    }
}