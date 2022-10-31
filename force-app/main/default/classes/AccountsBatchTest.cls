@istest
public class AccountsBatchTest {
    @istest
    private static void testBatch1() {
        //prepare data
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'test acc batch'+i;
            listAcc.add(a);
        }
        insert listAcc;
        //startest, stoptest
        test.startTest();
        Database.executeBatch(new accountBatch(), 950);
        test.stopTest();

        list<account> results = [select id, description from account];
        System.assert(results[0].Description.contains('Batch'));
    }
}
