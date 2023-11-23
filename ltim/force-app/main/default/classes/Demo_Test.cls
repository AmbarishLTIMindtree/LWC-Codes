@isTest
private class Demo_Test{
    
    @testSetup
    static void doTestDataSetup(){
        Account act=new Account();
        act.name='Test Account';
        insert act;
    }
    
    @isTest
    public static void doTest(){
        Test.startTest();
        Demo d=new Demo();
        d.sayHello();
        Integer result= d.add(1,2);
        System.assertEquals(3,result,'This result not expected.');
        
        Account a=[select id,name from account where name='Test Account'];
        d.getAccount(a);
        
        User use=[select id from User where username='ambarish.mindtree@gmail.com'];
        System.runAs(use){
        Marchandise__c m=new Marchandise__c();
        m.name='Test Jeans';
        insert m;
        
        Marchandise__c mer=[select id,name from Marchandise__c where name='Test Jeans'];
        delete mer;
        }
        Test.stopTest();
    }
}