/*
//today()
Date myDate = Date.today();
System.debug(MyDate);

//newInstance(year, month, day)
Date myBirthDate = Date.newInstance(1994, 11, 13);
System.debug(myBirthDate);

//addDays(additionalDays)
Date myAddedDate = MyDate.addDays(5);
System.debug(myAddedDate);

//addMonths(additionalMonths)
Date myAddedMnths = MyDate.addMonths(2);
System.debug(myAddedMnths);

//addYears(additionalYears)
date myAddedYear = MyDate.addYears(5);
System.debug('=='+myAddedYear);

//day()
Integer myDay = MyDate.day();
System.debug(myDay);//07

//month()
Integer myMonth = MyDate.month();
System.debug(myMonth);//9


//year()
Integer myYear = MyDate.year();
System.debug(myYear);//2022

//dayOfYear()
Integer  mydayOfYear = Date.today().dayOfYear();
System.debug('=='+mydayOfYear);
// 31+28+31+30+31+30+31+31+7=250

//daysBetween(secondDate)
Integer myDiffDate = myBirthDate.daysBetween(MyDate);
System.debug('===='+myDiffDate);

//daysInMonth(year, month)
Integer myMonthDays = Date.daysInMonth(2002, 12);
System.debug('======'+myMonthDays);

//format()
String myLocalDate = MyDate.format();
System.debug('====='+myLocalDate);

//isLeapYear(year)
Boolean myLeapYear = Date.isLeapYear(2002);
System.debug('==='+myLeapYear);

//isSameDay(dateToCompare)
Boolean mySameDay = MyDate.isSameDay(Date.newInstance(2022, 9, 7));
System.debug('===='+mySameDay);

//monthsBetween(secondDate)
Integer totalMonth = myBirthDate.monthsBetween(MyDate);
System.debug(totalMonth);

//parse(stringDate)
Date myParseDate = Date.parse('9/7/2022');
System.debug('======='+myParseDate);

//toStartOfMonth()
Date myStartDate = MyDate.toStartOfMonth();
System.debug('====='+myStartDate);

//toStartOfWeek()
Date myStartWeek = MyDate.toStartOfWeek();
System.debug('====='+myStartWeek);
*/

Date myDate = Date.today();
system.debug('Today is ' + myDate);

//non primitive data type: to have record value
Account myAccount = new Account();
myAccount.Name = 'Mahmut';
myAccount.Phone = '6548413531';
myAccount.Rating = 'Hot';
insert myAccount;

Opportunity myOpp = new Opportunity();
myOpp.name = 'Test opp';
myOpp.StageName = 'Prospecting';
myOpp.CloseDate = Date.newInstance(2022, 9, 29);
insert myOpp;