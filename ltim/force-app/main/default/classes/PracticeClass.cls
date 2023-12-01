@isTest(seeAllData=True)
private class PracticeClass {
    
    public testMethod static void doTest(){
        Practice p1=new Practice();
        p1.method1();
        Account act=[select id, name from Account where name='Account 18'];
        p1.getAccount(act);
        
    }
     
}