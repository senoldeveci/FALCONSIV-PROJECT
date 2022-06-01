public class Day10Review {
    public static string candidatesList(integer index) {
        List<string> listCAndidates = new List<string>();
        listCAndidates.add('Senol');
        listCAndidates.add('Ozlem');
        listCAndidates.add('Sinem');
        listCAndidates.add('Eren');
        listCAndidates.add('Ozlem');
        string returnIndex = '';
        if (index>=0 && index<listCAndidates.size()) {
            returnIndex = listCAndidates[index];
        } else {
            returnIndex = ' No such value found ';
        }
        return returnIndex;
    }

    public static void allCats() {
        Cat obj1 = new Cat('Van','black');
        Cat obj2 = new Cat('tabby', 'white');

        List<Cat> catList = new List<Cat>{obj1, obj2};
        System.debug(' List of All Cats = '+catList);
    }

    public static void allCars() {
        Car obj1 = new Car();
        obj1.carName = 'Ford Mustang';
        obj1.carColor = 'red';

        Car obj2 = new Car();
        obj2.carName = 'Corvette';
        obj2.carColor = 'black';

        List<Car> carList = new List<Car>();
        carList.add(obj1);
        carList.add(obj2);

        System.debug(' List of cars = '+carList);
    }

    public static void iterateIntegerList() {
        List<integer> integerList = new List<integer>{1,4,7,9,14};
        integer counter = 0;
        for (integer element : integerList) {
            counter++;
            System.debug(counter+ ' element in the list is = '+element);
        }
    }

    public static integer sumOfintegerList(List<integer> list1) {
        integer sum=0;
        for (integer element : list1) {
            sum+=element;
        }
        return sum;
    }
}