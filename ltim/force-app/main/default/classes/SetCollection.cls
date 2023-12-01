public class SetCollection {
    
    public void getNames(){
        Set<String> names=new Set<String>();
        names.add('Amit');
        names.add('Raj');
        names.add('Harish');
        names.add('Kaka');
        names.add('Amit');
        
        System.debug(names);
        for(String name:names){
            System.debug(name);
        }
    }

}