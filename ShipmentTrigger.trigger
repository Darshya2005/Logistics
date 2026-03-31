trigger ShipmentTrigger on Shipment__c (after insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        ShipmentTriggerHandler.afterInsert(Trigger.new);
    }
}
