Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Canada', 'Dollar');
System.debug(mapCntCurrency);

String Ind = 'India';
String IndiaCurrency = mapCntCurrency.get(Ind);
String TurkeyCurrency = mapCntCurrency.get('Turkey');

System.debug('India currency ==> ' + IndiaCurrency);
System.debug('Turkey currency ==> ' + TurkeyCurrency);

Set<String> allCountries = mapCntCurrency.keySet();
System.debug('all countries are ' + allCountries);

List<String> allCurrencies = mapCntCurrency.values();
System.debug('all currencies are ' + allCurrencies);

Set<String> countrySet = mapCntCurrency.keySet();
for (String eachKey: countrySet){
    System.debug('each key ==> ' + eachKey);
    //value? how to get value from key?
    String eachCurrency = mapCntCurrency.get(eachKey);
    System.debug('each currency ==> ' + eachCurrency);
    System.debug('---------------------');
}