public class MathPractice {
    //This method calculates cevre of square
    public decimal practiceOne(decimal en, decimal boy) {
        decimal cevre = (en + boy)*2;
        return cevre;
    }

    //This method calculates body mass index
    public decimal practiceTwo(decimal height, decimal weight) {
        decimal bmi = weight/(height*height);
        return bmi;
    }

    //This method calculates the average of two integers
    public decimal practiceThree(integer num1, integer num2) {
        decimal avg = (num1 + num2)/2;
        return avg;
    }

    //This method evaluates the total shopping amount and returns the bonus amount accordingly
    public decimal practiceFour(decimal totalAmount) {
        decimal bonus;
        if (totalAmount<=0){
            system.debug( ' You entered a wrong value! ');
        }else if ((0<totalAmount)&&(totalAmount<50)){
            system.debug( ' Since the total amount less than $50 you did not win any bonus for your shopping in the total amount of $'+totalAmount);
        }else if ((50<=totalAmount)&&(totalAmount<200)){
            bonus = 10;
            system.debug( ' You win $'+ bonus + ' for your shopping in the total amount of $'+totalAmount);
        }else if ((200<=totalAmount)&&(totalAmount<500)){
            bonus = 30;
            system.debug( ' You win $'+ bonus + ' for your shopping in the total amount of $'+totalAmount);
        }else {
            bonus = 50;
            system.debug( ' You win $'+ bonus + ' for your shopping in the total amount of $'+totalAmount);
        }
        return bonus;
    }

    public string favoriteCafe = '';
    public string favoritePark = '';
    public string favoriteMall = '';
    public string favoriteStore = '';

    //This method prints and returns your favorite locations. Enter the city you live as the parameter
    public string myFavoriteLocations (string city) {
    system.debug(' Favorite Cafe: '+favoriteCafe);
    system.debug(' Favorite Park: '+favoritePark);
    system.debug(' Favorite Mall: '+favoriteMall);
    system.debug(' Favorite Store: '+favoriteStore);
    return city;
    }

    public string item1 = 'EKMEK';
    public string item2 = 'SIMIT';
    public string item3 = 'KEK';
    decimal priceEkmek = 1;
    decimal priceSimit = 2;
    decimal priceKek = 3;
    public decimal practiceFive (string item, integer quantity) {
        decimal totalAmount = 0;
        switch on item {
            when 'EKMEK' {
                totalAmount = quantity * priceEkmek;
                System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
            }when 'SIMIT' {
                totalAmount = quantity * priceSimit;
                System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
            }when 'KEK' {
                totalAmount = quantity * priceKek;
                System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
            }when else {
                System.debug(' Wrong item selected!');
            }
        }
        return totalAmount;
    }
    // public decimal practiceFive (string item, integer quantity) {
    //     decimal totalAmount = 0;
    //     if (item == item1) {
    //         totalAmount = quantity * priceEkmek;
    //         System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
    //     } else if (item == item2) {
    //         totalAmount = quantity * priceSimit;
    //         System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
    //     } else if (item ==item3) {
    //         totalAmount = quantity * priceKek;
    //         System.debug('Almis oldugunuz '+quantity+' adet '+item+ ' tutari '+totalAmount+' $ dir.');
    //     } else {
    //         System.debug(' Wrong item selected!');
    //     }
    //     return totalAmount;
    // }
    public void printString (string message, integer times) {
        for (integer i=1; i<=times; i++) {
            System.debug( message+' '+i);
        }
    }

    public static decimal practiceSix(decimal uzunKenar, decimal kisaKenar, string islem) {
        decimal result;
        switch on islem {
            when 'Alan' {
                result = uzunKenar*kisaKenar;
                integer rounded = Math.round(result);
                System.debug(' Dikdortgenin alani: '+rounded);
            }when 'Cevre' {
                result = 2*(uzunKenar+kisaKenar);
                integer rounded = Math.round(result);
                System.debug(' Dikdortgenin cevresi: '+rounded);
            }
            when else {
                System.debug(' Lutfen gecerli bir islem turu giriniz!');
            }
        }
        return result;
    }

    public static string practiceSeven (decimal boy, decimal kilo) {
        string sonuc = '';
        decimal vki = kilo/boy.pow(2);
        decimal setScaled = vki.setScale(1);
        System.debug(setScaled);
        if (setScaled<=18.4) {
            sonuc = 'Zayif';
            System.debug(sonuc);
        }else if (setScaled>=18.5 && setScaled<=24.9) {
            sonuc = 'Normal';
            System.debug(sonuc);
        }else if (setScaled>=25 && setScaled<=29.9) {
            sonuc = 'Kilolu';
            System.debug(sonuc);
        }else {
            System.debug('Lutfen girmis oldugunuz boy ve kilo degerlerini kontrol ediniz!');
        }
        return sonuc;
    }

    public integer practiceEight (integer num1, integer num2) {
        integer sum = 0;
        if (num1<num2) {
            for (integer i=num1; i<=num2;i++){
                sum+=i;
            }
            System.debug(sum);
        } else if (num1>num2) {
            for (integer i=num1; i>=num2;i--){
                sum+=i;
            }
            System.debug(sum);
        }else {
            sum = num1 + num2;
            System.debug(sum);
        }
        return sum;
    }

    public static void ageCalculate(Map<string, Date> map1 ) {
       
        decimal age = 0;
        date current = date.today();
        date birthday;
        if (!map1.isEmpty()) {
            for (string i : map1.keySet()) {
                birthday = map1.get(i);
                age = birthday.daysBetween(current)/365;
                System.debug(i+' in yasi = '+age);
            } 
        } else {
            System.debug(' Your Date List is Empty!!!');
        }
    }

}