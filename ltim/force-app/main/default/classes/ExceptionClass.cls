public class ExceptionClass {
    
    public void getDivide(Integer a, Integer b){
        try{
            Integer result=a/b;
            System.debug(result);
            ChildClass m;
            System.debug(m);
           	m.method2();
            List<String> name=new List<String>();
            name.add('amit');
            System.debug(name.get(5));
        }catch(MathException m){
            System.debug('You can not divide by zero');
        }catch(NullPointerException n){
            System.debug('Null Pointer Exception occured');
        }catch(Exception e){
            System.debug('Server is Busy');
        }
    }

}