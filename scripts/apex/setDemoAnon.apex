Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        Set<String> capCities = SetDemo.capitalizeAllSet(cities);
        System.debug('cap cities ==> ' + capCities);



SetDemo.citySet();
SetDemo.randomIntegerSet();

List<integer> listInteger = new List<integer>();
listInteger.add(10);
listInteger.add(25);
listInteger.add(25);
listInteger.add(102);
listInteger.add(10);
listInteger.add(38);
Set<integer> setInteger = SetDemo.setFromList(listInteger);
System.debug('setInteger ==> ' + setInteger);