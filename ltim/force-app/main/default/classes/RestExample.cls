@REstResource(urlMapping='/myaccounts/*')
global class RestExample {
    
   // String id1='';

    @httpGet
    global static List<Account> getAccounts(){
        List<Account> accounts=[select id,name from Account];
        return accounts;
    }
    
    @httpPost
    global static void createAccount(String accountName){
        Account account=new Account();
        account.name=accountName;
        insert account;
    }
    
    @httpDelete
    global static void deleteAccount(){
        RestRequest request=RestContext.request;
        RestResponse response=RestContext.response;
        String recordId=request.requestURI.subString(request.requestURI.lastIndexOf('/')+1);
      //  String id1=recordId;
        Account account=[select id,name from Account where id=: recordId];
        delete account;
    }
    
}