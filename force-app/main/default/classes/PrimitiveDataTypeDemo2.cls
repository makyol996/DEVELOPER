public with sharing class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        System.debug('create new date instance');

        Date newDate = Date.newInstance(1995, 5, 15);
        System.debug('new Date is ' + newDate);

        Date newDate2 = Date.newInstance(2022, 2, 12);
        System.debug('new date 2 is ' + newDate2);

        Date todayDate = Date.today();
        System.debug('today\'s date is ' + todayDate);

    }

    public void printNewTime(){
        Time myTime = Time.newInstance(15, 20, 2, 67);
        System.debug(myTime);

        Time meTime = Time.newInstance(15, 15, 2, 30);
        System.debug(meTime);
    }

    public void printNewDateTime(){
        Date todayDate = Date.today();
        Time myTime = Time.newInstance(15, 2, 20, 35);

        //1. New datetime from date and time
        Datetime dt1 = Datetime.newInstance(todayDate, myTime);
        System.debug('dt1 is ---> ' + dt1);
        //2. datetime using year, month, day  --- night time in GMT
        Datetime dt2 = Datetime.newInstance(2025, 5, 15);
        System.debug('dt2 is ---> ' + dt2);

        //3. create datetime using year, month, day, hour, minute, second
        Datetime dt3 = Datetime.newInstance(2022, 9, 13, 22, 00, 54);
        System.debug('dt3 is --> ' + dt3);

        //4. longtime
        Long longTime = 651681565446L;
        Datetime dt4 = Datetime.newInstance(longTime);

        Long longTimeZero = 0;
        Datetime dt41 = Datetime.newInstance(longTimeZero);

        System.debug('dt4 --> ' + dt4);
        System.debug('dt41 -->' + dt41);

        //5. gmt
        Datetime dt5 = Datetime.newInstanceGmt(2022, 5, 15, 7, 45, 55);
        System.debug('dt5 --> ' + dt5);

        //6. now
        Datetime dt6 = Datetime.now();
        System.debug('dt6 --> ' + dt6);
        
    }
}
