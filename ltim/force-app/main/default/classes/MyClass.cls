public with sharing class MyClass {

    Account act;

    public void doInsert() {
    Account newAccount=new Account(Name='New Account');
        insert newAccount;
    }

    
    public MyClass(){
        act=[select id,name from account where id='0015h00001VFxU2'];
    }

    public Account getMyClass() {
        return act;
    }

}