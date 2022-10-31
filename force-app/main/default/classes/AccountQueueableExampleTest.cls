@istest
public class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        List<Account> accs = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            account a = new account(name = 'Test Account' + i);
            accs.add(a);
        }
        insert accs;
    }

    @istest
    private static void testQueueable() {
        List<Account> allAccs = [select id, name from account];
        AccountQueueableExample aq = new AccountQueueableExample(allAccs);
        test.startTest();
        system.enqueueJob(aq);
        test.stopTest();

        List<Account> resultAcc = [select id, name from account where name like '%SI%'];
        system.assertEquals(200, resultAcc.size());
    }
}
