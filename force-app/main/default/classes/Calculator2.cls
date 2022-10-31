public class Calculator2 {
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public integer add(integer a, integer b, integer c){
        system.debug('inside add method with 3 params');
        integer sum = a + b + c;
        return sum;
    }

    public boolean leapYearCheck(date dt){
        integer year = dt.year(); //clear?
        boolean isLeap = date.isLeapYear(year);
        return isLeap;
    }
}