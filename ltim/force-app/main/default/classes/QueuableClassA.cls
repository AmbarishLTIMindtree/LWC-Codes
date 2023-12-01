public class QueuableClassA {
    
    @future
    public static void a1(){
        System.debug('I am from Class A');
        System.enqueueJob(new QueuableClassB());
    }

}