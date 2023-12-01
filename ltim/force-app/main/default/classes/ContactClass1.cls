public class ContactClass1 {

    public Contact newContact { get; set; }

    public PageReference insertRecord() {
        insert newContact;
        new Contact();
        return null;
    }

    public ContactClass1(){
        newContact=new Contact();
    }
    
}