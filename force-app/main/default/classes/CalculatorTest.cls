@istest
public class CalculatorTest {
    @istest
    private static void testCalculator() {
        Calculator calc = new Calculator();
        calc.printNewMessage('this is coming from a test method. so chill');
    }
    @istest
    private static void testCalPrint2() {
        Calculator calc = new Calculator();
        String returnmsg = calc.printAndReturnMessage('this is coming from a test method, again. so chill');
        String expectedReturnMsg = 'this is coming from a test method, again. so chill...OK Cool';
        system.assertEquals(expectedReturnMsg, returnmsg);
    }
}