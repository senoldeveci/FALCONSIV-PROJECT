public class Cat {
    public string name;
    public string color;

    // public Cat() {
    //     System.debug('constructor called');
    // }

    public Cat(string n, string c){
        this.name = n;
        this.color = c;
        System.debug(' parameterized constructor called');
        sleeping();
    }

    public void sleeping(){
        System.debug(name+' is sleeping');
    }
}