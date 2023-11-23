public class MyApexSchedule implements Schedulable{
    
    public void execute(SchedulableContext sc){
        BatchClass1 demo=new BatchClass1();
		database.executeBatch(demo);
    }

}