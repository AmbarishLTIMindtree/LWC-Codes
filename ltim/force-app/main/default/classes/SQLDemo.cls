public class SQLDemo {
    
    public void getAllAccount(){
        List<Marchandise__c> accounts=[select id,name from Marchandise__c];
        for(Marchandise__c account:accounts){
            System.debug('Account Id = '+ account.id+' Account Name = '+account.name);
        }
    }

}