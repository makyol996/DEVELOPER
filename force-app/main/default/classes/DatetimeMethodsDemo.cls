public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(1990, 03, 15);
        date todayDate = date.today();
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        System.debug('My age in months is... ' + ageInMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('My age in days is... ' + ageInDays);
    }

    public void printSubscriptionEndDate(){
        //today date = subs start date
        Date subscriptionStartDate = date.today();

        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);

        System.debug('subscription will end on ' + subscriptionEndDate);

        Integer yearEndDate = subscriptionEndDate.year();
        Integer monthEndDate = subscriptionEndDate.month();
        System.debug('Year and month of End Date is ' + yearEndDate + ', ' + monthEndDate);
    }

    public void printOfferEndDateTime(){
        Datetime offerStartDt = Datetime.now();

        Datetime offerEndDt = offerStartDt.addHours(51);
        System.debug('offer ends datetime ' + offerEndDt);

        //fetch just date component
        date offerEndDate = offerEndDt.date();
        System.debug('offer end date is ' + offerEndDate);
    }
}
