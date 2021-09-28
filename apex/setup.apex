System.debug('cleanup streaming channel');
delete [select id from StreamingChannel where name='/u/myStream'];

System.debug('creating streaming channel');
StreamingChannel mystream=new StreamingChannel();
myStream.description='My Streaming Channel'; 
myStream.name='/u/myStream';
insert myStream;

//Push Topic

System.debug('cleanup Push Topic');
delete [select id from pushtopic where name = 'PropertyPT'];

System.debug('creating Push Topic');
PushTopic pushTopic = new PushTopic();
pushTopic.Name = 'PropertyPT';
pushTopic.Query = 'SELECT Id, address__c,city__c,state__c,status__c FROM Property__c where status__c = \'Available\'';
pushTopic.ApiVersion = 52.0;
pushTopic.NotifyForOperationCreate = true;
pushTopic.NotifyForOperationUpdate = true;
pushTopic.NotifyForOperationUndelete = true;
pushTopic.NotifyForOperationDelete = true;
pushTopic.NotifyForFields = 'Referenced';
insert pushTopic;
