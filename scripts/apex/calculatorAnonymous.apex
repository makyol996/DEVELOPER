/*Calculator c = new Calculator();
string result = c.printAndReturnMessage('print something please');
System.debug(result);*/

Calculator c2 = new Calculator();
date today = Date.today();
Boolean isLeap = c2.leapYearCheck(today);
System.debug('this year is leap? ' + isLeap);

Date dtt = date.newInstance(2000, 01, 01);
Boolean isLeap2 = c2.leapYearCheck(dtt);
System.debug('this year is leap? ' + isLeap2);


integer s = c2.add(5, 100);
System.debug('sum of 5 and 100 is ' + s);

Calculator c2 = new Calculator();
Integer x = c2.add(3, 5, 4);
System.debug('x is ' + x);






/*
c.printNewMethod('This is new age calc.');

String msg = 'This is new text message.';
system.debug(msg);

String msg22 = 'It can print different variable, too.';
system.debug(msg22.toUpperCase());

*/