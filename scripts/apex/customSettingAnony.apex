Map<String, Country_Code__c> cc = Country_Code__c.getAll();
system.debug('country code map --> ' + cc);

For(string eachCountry : cc.keySet()){
    Country_Code__c eachCC = cc.get(eachCountry);
    string isoCode = eachCC.iso_Code__c;
    system.debug(eachCountry + ' ISO Code is ' + isoCode);
}

//if we want to get iso code for canada
Country_Code__c can = Country_Code__c.getInstance('Canada');
system.debug('Canada iso code is ' + can.iso_code__c);