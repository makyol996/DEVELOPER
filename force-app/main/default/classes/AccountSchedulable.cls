public class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        //here we can write apex code
        //list
        //for each
        //update
        Database.executeBatch(new AccountBatch());
    }
}
