public class Cat1 {
    public string name = '';
    public string color = '';
    
    public Cat1() {
        system.debug('constructor called.');
    }

    public Cat1 (string str1, string str2) {
        this.name = str1;
        this.color = str2;
        sleeping();
    }

    public void sleeping(){
        System.debug(name+' is sleeping');
    }
}