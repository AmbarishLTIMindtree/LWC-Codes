public class Calci {
    
    public void call(){
        
        Addition a=new Addition();
        Subtraction b=new Subtraction();
        Multiplication c=new Multiplication();
        Division d=new Division();
        
        a.doSum();
        b.doSub();
        c.doMul();
        d.doDiv();
    }

}