public class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
        System.debug('printing primitive datatypes');

        String batchName = 'Batch-9';
        Integer totalCandidates = 70;
        Boolean isAdminCompleted = true;

        System.debug(batchName);
        System.debug(totalCandidates);
        System.debug(isAdminCompleted);

        String batchDescription = batchName + ' is fantastic. ';
        System.debug(batchDescription);

        Decimal decValue = 70.55;
        System.debug(decValue);

        Long longValue = 215684665L;
        System.debug(longValue);

        Object obj = 'This is a string';
        Object obj2 = 40.5;
        Object obj3 = true;
        System.debug(obj);
        System.debug(obj2);
        System.debug(obj3);

        Id id1 = '0017Q00000Yia3OQAR';
        System.debug(id1);

    }
}
