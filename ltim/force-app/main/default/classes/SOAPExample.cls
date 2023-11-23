global class SOAPExample {
    
    webservice static Account getAccount(String actId){
        Account act=[select id,name from Account where id =: actId];
        return act;
    }

}