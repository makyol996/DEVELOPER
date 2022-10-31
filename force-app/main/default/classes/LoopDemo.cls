public class LoopDemo {
    public void print_int_while() {
        Integer count = 1;
        while (count <= 25) {
            System.debug(count);
            count++;
        }
    }

    public void print_N_numbers(Integer n){
        //for  initialize      condition      increment
        for (  Integer i = 0;    i < n;         i++) {
            //print 'i'...
            System.debug(i);
        }
    }

    public void print_N_Odd_numbers(Integer startInt, Integer endInt){
        if (startInt > endInt) {
            System.debug('Start number cannot be greater than end number.');
        } else {
            for (Integer i = startInt; i < endInt; i++){
                Integer modI = math.mod(i, 2);
                if (modI == 1) System.debug(i);
                
            }
        }
    }
    
}
