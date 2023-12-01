@RestResource(urlMapping='/mySellitems/*')
global class MyIntSell {

    @httpGet

    global static List<Sellitem__c> getAllRecord(){

        List<Sellitem__c> sell = [select id,name from Sellitem__c];

        return sell;

    }

}