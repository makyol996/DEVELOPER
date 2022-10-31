@istest
public class Calculator2Test {
    @istest
    private static void addTest1() {
        Calculator2 c = new Calculator2();
        Integer sum = c.add(10, 15);
        system.assertEquals(25, sum);
    }
    @istest
    private static void addTest2(){
        Calculator2 c = new Calculator2();
        Integer sum = c.add(10, 15, 5);
        system.assertEquals(30, sum);
    }
    @istest
    private static void addTest3() {
        Calculator2 c = new Calculator2();
        date dtt = date.newInstance(2000, 01, 01);
        boolean isLeap2 = c.leapYearCheck(dtt);
        system.assertEquals(true, isLeap2);
    }
}
