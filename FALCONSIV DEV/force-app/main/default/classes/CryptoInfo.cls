public with sharing class CryptoInfo {
    public static Map<string,decimal> cryptoMap;

    public static decimal showPrice(string coinName) {
        Decimal price=0;
       
        if (cryptoMap.containsKey(coinName)) {
            price += cryptoMap.get(coinName)+5;

        }else{
            price = price + 5;
            System.debug(' Please enter a valid coin name!');

        }
        return price;
    }
}