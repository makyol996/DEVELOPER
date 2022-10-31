public class DmlDemo {
    public static void dmlInsertDemo_StndObj1() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        acc.Phone = '062589412';
        insert acc;
        System.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj1() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Teach DML to Batch 9 the great';
        sp.Description__c = 'All 50% are great learners.';
        insert sp;
    }
    public static void dmlUpdateDemo_1() {
        Account acc = new Account();
        acc.Name = 'simple';
        System.debug('before inserting acc ==> ' + acc);
        insert acc;
        System.debug('after insert acc ==> ' + acc);

        acc.Name = 'Salesforce Inc.';
        update acc;
        System.debug('after update acc ==> ' + acc);
    }

    public static void dmlUpdateDemo_2() {
        Account acc = [select id, name from account where name = 'SoftInnovas' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        
    }
    public static void dmlInsertDemo_2(){
        Account acc = [select id, name from Account ORDER BY CreatedDate desc LIMIT 1];

        //create contact for latest created account
        contact cont = new Contact();
        cont.LastName = 'Biden';
        cont.AccountId = acc.id;
        insert cont;
    }

    public static void dmlInsertDemo_3(){
        //1. soql to get one salesforce project
        Salesforce_Project__c sp = [select id, name FROM Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];

        //2. create tickets instance
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'apex classes';
        st.Description__c = 'kinda simple';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 8, 1);
        //set relationship field
        st.Salesforce_Project__c = sp.id;
        insert st;
    }
    public static void dmlMultipleRecordInsert_right1(){
        List<Account> listAccount = new list<Account>();
        Account acc1 = new Account();
        acc1.Name = 'bulk acc 1';
        listAccount.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'bulk acc 2';
        listAccount.add(acc2);

        account acc3 = new Account();
        acc3.Name = 'bulk acc 3';
        listAccount.add(acc3);

        insert listAccount;
    }
    public static void dmlMultipleRecordInsert_right2(){
        list<Account> listacc = new List<Account>();
        for (integer i=0; i<155; i++){
            Account a = new Account();
            a.Name = 'Softinnovas 3Oct-v' + i;
            a.Active__c = 'Yes';
            listacc.add(a);
        }
        insert listacc;
    }
    public static void dmlMultipleRecordUpdate_right2(){
        List<Account> fetchAccount = [select id, name FROM Account ORDER BY CreatedDate desc LIMIT 155];
        List<Account> updateAcc = new List<Account>();
        for (Account eachAcc : fetchAccount){
            eachAcc.Name += 'via B.0';
            eachAcc.AccountNumber = '54413545';
            updateAcc.add(eachAcc);
        }
        if(!updateAcc.isEmpty()){
            update updateAcc;
        }
        
    }

    
}
