public class Car {
    public string carColor = '';
    public string carName = '';
    private integer maxSpeedKmPerHour = 150;
    //1. access modifier
    //2. return type
    //3. methodName followed by ()
    public void switchOn() {
        // this is method body
        //updated code
        system.debug('starting the car');
    } 

    public void drive(){
        System.debug(' driving ' + carName);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving '+carName+' at '+maxSpeedKmPerHour+' km/h'; 
        System.debug(drivingDescription);
    }
}