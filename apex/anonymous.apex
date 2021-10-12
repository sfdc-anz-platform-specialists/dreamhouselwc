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