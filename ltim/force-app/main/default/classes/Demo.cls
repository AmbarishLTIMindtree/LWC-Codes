public class Demo {

    public void getAccount(Account account){
        
        System.debug(account);
    }

    @testVisible
    private Integer add(Integer a, Integer b){
        System.debug(a+b);
        return (a+b);
    }
    
    public void sayHello(){
        System.debug('Hello Apex...');
    }

}