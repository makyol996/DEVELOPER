List<account> listAccount = new list<account>();

account acc1 = new Account();
acc1.Name = 'bulk acc 1';
//insert acc1;
listAccount.add(acc1);

account acc2 = new Account();
acc2.Name = 'bulk acc 2';
//insert acc2;
listAccount.add(acc2);

Account a1 = new Account();
Account a2 = new Account();

listAccount.add(a1);
listAccount.add(a2);

list<database.SaveResult> results = database.insert(listAccount, false);
for (database.SaveResult sr : results) {
    if (sr.isSuccess()) {
        System.debug('acc inserted successfully, acc id is ' + sr.getId());
    } else {
        System.debug('acc error is ... ' + sr.getErrors());
    }
}
