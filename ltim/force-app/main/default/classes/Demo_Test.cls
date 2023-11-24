@isTest
private class Demo_Test{
    
    @testSetup
    static void addMethod(){
        Account na=new Account();
        na.name='Ajay';
        insert na;
    }
        
    @isTest
    public static void doTest(){
        Demo d=new Demo();
        Account acc=[select name from Account where name='Ajay'];
        d.getAccount(acc);
    }
    
}