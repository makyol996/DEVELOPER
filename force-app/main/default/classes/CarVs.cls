public class CarVs {
    //Class body. inside of the class.

    public String carColor = '';
    public String carName ='';

    Integer maxSpeedKmPerHour = 150;//this is a class variable? yes,


    public void switchOn(){
        //method body
        System.debug('starting the car NOW');
    }

    public void drive(){
        switchOn();
        System.debug('driving .... ' + carName);
    }
    public void driveAtMaxSpeed(){
        String description = 'Driving ' + carName + ' at max speed of ' + maxSpeedKmPerHour + 'km/hr';
        System.debug(description);
    }
}

//outside of the class
