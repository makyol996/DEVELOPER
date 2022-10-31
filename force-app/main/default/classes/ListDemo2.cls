public class ListDemo2 {
    public static void iterateListInteger() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
        //System.debug('Total size of list is ' + listInteger.size());
    }
}
