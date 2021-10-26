delete [select id from property__c where name ='Test Property'];

// ad ten percent
for (Property__c p :[select id,name,price__c,status__c from Property__c])
{   
   p.price__c *= 1.10;  
   update p;  
}

// oops - omitted the '*' - disaster
for (Property__c p :[select id,name,price__c,status__c from Property__c])
{   
   p.price__c = 1.10;  
   update p;  
}


//delete readings
List <SensorReadings__b> readings = new List<SensorReadings__b>([select ReadingType__c,Sensorid__c,readingdatetime__c from SensorReadings__b]);
Database.deleteImmediate(readings);

//create new readings for two sensors
List <SensorReadings__b> readings = new List<SensorReadings__b>();
DateTime timestamp=DateTime.now();
Double volts;
SensorReadings__b reading;
for (Integer i = 1 ; i <= 1000; i++) {
    //sensor-1
    volts = (Double)(Math.random() * 40) + 200;
    reading=new SensorReadings__b();
    reading.ReadingId__c= i.format();
    reading.ReadingType__c='Voltage';
    reading.SensorId__c='Sensor-1';
    reading.ReadingDateTime__c=timestamp;
    reading.readingvalue__c=volts;
    readings.add(reading);
    //sensor-2
    volts = (Double)(Math.random() * 40) + 200;
    SensorReadings__b reading=new SensorReadings__b();
    reading.ReadingId__c= i.format();
    reading.ReadingType__c='Voltage';
    reading.SensorId__c='Sensor-2';
    reading.ReadingDateTime__c=timestamp;
    reading.readingvalue__c=volts;
    readings.add(reading);
    
    //subtract ten minutes from timestampp
    timestamp=timestamp.addSeconds(-1 * 600); 
}
  List<DataBase.SaveResult> sr = Database.insertImmediate(readings);
  








