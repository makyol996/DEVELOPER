CarVs audi = new CarVs();
audi.carColor = 'black';
System.debug('audi => ' + audi);
audi.switchOn();

CarVs vw = new CarVs();
vw.carColor = 'White';
vw.carName = 'polo';
System.debug(vw);
vw.drive();
vw.driveAtMaxSpeed();