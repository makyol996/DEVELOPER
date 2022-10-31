public class AccountBatch implements Database.Batchable<SObject>, Database.stateful{
    integer numberOfRecords = 0;
    integer count = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query
        //sobject is account
        System.debug('batch started. congrats');
        Database.QueryLocator ql = Database.getQueryLocator([select id, description from account]);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        System.debug('execute method running');
        //dmls
        for (account acc : scope) {
            acc.Description += '...update via Batch.';
        }
        numberOfRecords+= scope.size();
        count++;
        system.debug('count is ' + count);
        system.debug('number of records updated till now is ' + numberOfRecords);
        update scope;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('finish method executed. batch done.');
        System.debug('number of records updated: ' + numberOfRecords);
    }
} 
