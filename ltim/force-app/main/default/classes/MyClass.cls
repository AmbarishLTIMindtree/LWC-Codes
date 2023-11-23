public class MyClass {

    Account act;
    
    public PageReference doSave(){
        update act;
        return new PageReference('/apex/mysuccess');
        // return new PageReference("https://www.google.com?q=amit baba");
    }
    
    public MyClass(){
        // act=[select id,name from account where id='0015h00001VlU71'];
        id i=apexpages.currentpage().getparameters().get('id');
        if(i==null){
        
            act=new Account();
        }
        else{
            act=[select id,name from account where id=: i];}
    }

    public Account getMyClass() {
        return act;
    }
    
    

}