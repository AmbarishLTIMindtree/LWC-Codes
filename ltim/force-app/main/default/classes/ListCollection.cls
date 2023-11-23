public class ListCollection {
    
    public void getNames(){
        List<String> names=new List<String>();
        names.add('Ambarish');
        names.add('Bhagawati');
        names.add('Mallikarjun');
        
        System.debug(names);
        
        for(String name:names){
            System.debug(name);
        }
        names.add('Manoj');
        System.debug(names);
        
        names.add(1,'Preeti');
        System.debug(names);
        
        names.set(1,'Prajwala');
        System.debug(names);
        
        System.debug(names.size());
        
        System.debug(names.isEmpty());
        
        System.debug(names.contains('Preeti'));
        
        names.remove(1);
        System.debug(names);
        
        System.debug(names.get(2));
        
        List<String> list2=new List<String>();
        list2.addAll(names);
        
        System.debug(list2.equals(names));
        
        
    }

}