public class MapCollection {
    public void getName(){
        Map<String,String> map1=new Map<String,String>();
        map1.put('name1','Ambarish');
        map1.put('name2','Manoj');
        map1.put('name3','Akash');
        System.debug(map1.get('name1'));
        map1.put('name1','Ambika');
        System.debug(map1.get('name1'));
        Set<String> keys=map1.keySet();
        System.debug(keys);
        for(String key:keys){
            System.debug(map1.get(key));
        }
        List<String> values=map1.values();
        for(String value:values){
            System.debug(value);
        }
    }

}