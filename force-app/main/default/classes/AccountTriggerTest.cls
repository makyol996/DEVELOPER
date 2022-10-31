@isTest
public class AccountTriggerTest {
    @isTest
    static void testAccountTrg() {
        //prepare data
        Account acc1 = new Account();
        acc1.Name = 'SI Test';
        acc1.industry = 'Energy';

        Account acc2 = new Account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<account> accList = new List<account> {acc1, acc2, acc3};
        insert accList;
    }
}
