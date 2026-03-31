public with sharing class ShipmentController {
    @AuraEnabled(cacheable=true)
    public static List<Shipment__c> getShipments() {
        return [SELECT Id, Name, Status__c, Tracking_Number__c, Order__c FROM Shipment__c LIMIT 50];
    }

    @AuraEnabled
    public static Shipment__c createShipment(String name, String trackingNumber) {
        Shipment__c s = new Shipment__c(Name = name, Tracking_Number__c = trackingNumber, Status__c='Pending');
        insert s;
        return s;
    }
}
