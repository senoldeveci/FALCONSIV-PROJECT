public class ListSetMap {
    public static void practiceOne(){
        List<String> cities = new List<String>{'Ankara', 'İstanbul', 'London', 'Paris', 'New York', 'Tokyo', 'Antalya', 'London', 'Paris', 'New York', 'Tokyo'};
        System.debug(' Liste = '+cities);
        System.debug(' Listenin boyutu = '+cities.size());
        System.debug(' Liste bos mu? '+cities.isEmpty());
        system.debug(' Listenin 7. elemani = '+cities.get(6));
        Set<String> setOfCities = new Set<String>();
        setOfCities.addAll(cities);
        System.debug(' Set olarak = '+setOfCities);
    }

    public static void practiceTwo(List<Integer> list1){
        Set<Integer> setTekSayilar = new Set<Integer>();
        Set<Integer> setCiftSayilar = new Set<Integer>();
        for (integer i:list1){
            if (Math.mod(i, 2)==0){
                setCiftSayilar.add(i);

            }else{
                setTekSayilar.add(i);
            }
        }
        System.debug(' Listedeki cift sayilar = '+setCiftSayilar);
        system.debug(' Listedeki tek sayilar = '+setTekSayilar);
    }
}