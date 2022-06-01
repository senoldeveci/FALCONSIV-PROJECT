public class MyCity {
    public void cityInformation() {
        // String population = '20 million';
        // String location = 'connects Asia to Europe';
        // String mostPopularPlace = 'Bosphorus';
        // String briefInfo = 'My favorite city is Istanbul. It"s population is ' + population + '. It ' + location + '. It"s most popular place to visit is ' + mostPopularPlace + '.';  
        // system.debug(briefInfo);
        date independence = date.newInstance(1299,5,29);
        time sunRise = time.newInstance(07,04,00,00);
        date currentDate = date.today();
        date priorDate = currentDate.addMonths(-36);
        System.debug(' Independence date = '+independence);
        System.debug(' Local sun rise time = '+sunRise);
        System.debug(' 36 months prior today = '+priorDate);
    }

    public void stringMethod(string str1) {
        string upperCase = str1.toUpperCase();
        boolean containsForce = upperCase.contains('force');
        boolean containsForceIgnoreCase = upperCase.containsIgnoreCase('force');
        integer lettterCount = str1.length();
        System.debug(' Upper Case form = '+upperCase);
        System.debug(' Contains \'force\' = '+ containsForce);
        System.debug(' Contain \'force\' ignore case = '+containsForceIgnoreCase);
        System.debug(' length = '+lettterCount);

    }

    public void dateMethod() {
        date date1 = date.today();
        System.debug(' Today\'s date is '+date1);
        dateTime dt1 = dateTime.now();
        dateTime dt2 = dt1.addHours(50);
        System.debug(' 50 hours from now = '+dt2);

    }
}