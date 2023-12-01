public class Demo{

    public void getAccount(Account account){
        System.debug(account);
    }

    @testVisible
    private Integer method1(Integer a,Integer b){
        return a+b;
    }
}