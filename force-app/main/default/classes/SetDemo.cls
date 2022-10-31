public class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        System.debug('set of  cities = ' + cities);
    }

    public static void randomIntegerSet() {
        Set<integer> integerSet = new Set<integer>();
        integerSet.add(15);
        integerSet.add(19);
        integerSet.add(25);
        integerSet.add(15);
        integerSet.add(15);
        integerSet.add(15);
        System.debug('integer set ==> ' + integerSet);
    }

    public static set<integer> setFromList(list<integer> intList) {
        Set<integer> setOfInt = new Set<integer>();
        setOfInt.addAll(intList);
        return setOfInt;
    }

    public static set<string> capitalizeAllSet(set<string> setString) {
        Set<string> returnSet = new Set<string>();
        //logic to uppercase element
        for (string eachStr : setString) {
            String tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);
        }
        return returnSet;
    }
}