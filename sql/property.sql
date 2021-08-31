//queries on property__c
select id,name,address__c from property__c

select count(id) Properties,broker__r.name from property__c group by broker__r.name  