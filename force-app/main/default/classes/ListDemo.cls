public class ListDemo {
    public static string candidatesList(integer i) {
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Marie');
        listCandidates.add('Bill');
        System.debug('candidates list is ' + listCandidates);
        String returnStr = '';
        
        if (i < listCandidates.size() && i >=0) {
            returnStr = listCandidates[i];
        } else {
            returnStr = 'No values found';
        }
        return returnStr;
    }

    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(25);
        listInteger.add(25);
        listInteger.add(102);
        listInteger.add(10);
        listInteger.add(38);

        System.debug('random integer list is ' + listInteger);

        Integer index3value = listInteger.get(3);
        System.debug('index 3 value => ' + index3value);

        Integer index2value = listInteger[2];
        System.debug('index 2 value => ' + index2value);

    }

    public static void allCats(){
        Cat batch9Cat = new Cat('fluffkins', 'white');
        Cat vitapsCat = new Cat('simba', 'brown');
        Cat cevdetsCat = new Cat('moya', 'gray');

        List<cat> cats = new List<cat>();
        cats.add(batch9Cat);
        cats.add(vitapsCat);
        cats.add(cevdetsCat);
        cats.add(vitapsCat);
        cats.add(cevdetsCat);

        System.debug('all cats => ' + cats);
        if (!cats.isEmpty()) {
            cat index3 = cats[3];
            System.debug('Cat at index 3 ==>> ' + index3);
        }
    }


}
