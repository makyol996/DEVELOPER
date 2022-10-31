try {
    Account ac = new Account();
    insert ac;
} catch(DmlException dex) {
    System.debug('dml went wrong buddy');
}
catch (Exception ex) {
    System.debug('something went wrong man');
}
System.debug('apex is simple');