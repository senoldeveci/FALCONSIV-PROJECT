public class TurkishRevision5 {
    public static void stringListMethodsPractice() {
        List<string> stringList1 = new List<string>();
        stringList1.add('Ahmet');
        stringList1.add('Mehmet');
        stringList1.add('Ali');
        boolean chck1 = stringList1.contains('ahmet');
        // boolean chck2 = stringList1.containsIgnoreCase('ahmet');
        System.debug(chck1);
        // System.debug(chck2);
        
    }

    public static void mathMethodsPractice() {
        List<string> dersler = new List<string>();
        List<integer> numList = new List<integer>{23,7,4,18};
        dersler.add('Math');
        dersler.add('Turkish');
        dersler.add('Science');
        dersler.add('History');
        System.debug(dersler);
        string index2 = dersler.get(2);
        string index2v2 = dersler[2];
        System.debug(index2+' / '+index2v2);
        System.debug(dersler.indexOf('History'));
        System.debug(dersler.isEmpty());
        System.debug(!dersler.isEmpty());
        System.debug('Size = '+dersler.size());
        dersler.sort();
        System.debug(' Sorted = '+dersler);
        System.debug(' Unsorted = '+numList);
        numList.sort();
        System.debug(' Sorted = '+numList);
    }
}