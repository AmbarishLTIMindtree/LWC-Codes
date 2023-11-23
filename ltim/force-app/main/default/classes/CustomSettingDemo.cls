public class CustomSettingDemo {
    
    public void customSettingMethod(){
        MyCustomSetting__c mc=MyCustomSetting__c.getInstance('MyDataSet');
        System.debug('Value of My Custom Setting : '+mc);
        if(mc.isActive__c == true){
            System.debug('Please call my trigger');
        }else{
            System.debug('Sorry, I cannot');
        }
    }

}