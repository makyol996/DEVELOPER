public class SoqlDemo {
    public static void accountSoql_1() {
        List<account> listAcc = [select id, name, phone, active__c from Account WHERE name LIKE '%A%'];
        System.debug('account list ==> ' + listAcc);
        System.debug('listAcc # of records ' + listAcc.size());

        Account acc = [select id, name, phone, active__c from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('latest created record ==> ' + acc);
    }

    public static void accountSoql_2() {
        Account acc = [select id, name, phone, active__c, AccountNumber from Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug('latest created record ==> ' + acc);
        //store name and phone in string
        String accName = acc.Name;
        String accPhone = acc.Phone;
        System.debug('acc name is ' + accName + ', phone is ' + accPhone + ', acc number = ' + acc.AccountNumber);
    }

    public static void accountSoql_3() {
        list<Account> listAcc = [select id, name, phone, AccountNumber from Account ORDER BY CreatedDate desc];
        System.debug('all accounts ' + listAcc);
        for (account eachAccount : listAcc) {
            String accName = eachAccount.Name;
            String accPhone = eachAccount.Phone;
            System.debug('acc name is ' + accName + ', phone is ' + accPhone + ', acc number = ' + eachAccount.AccountNumber);
            System.debug('-----------------');
        }
    }

    public static void accountSoql_Filter() {
        String filterName = 'Salesforce Inc.';
        List<account> listAcc = [select id, name, active__c from account where name = :filterName];
        System.debug('filter name ' + listAcc);
    }

    public static void accountSoql_Filter(string accName) {
        List<account> listAcc = [select id, name, active__c from Account where name = :accName];
        System.debug('filter name ' + listAcc);
    }
}