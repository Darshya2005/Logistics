public class ShipmentTriggerHandler {
    public static void afterInsert(List<Shipment__c> newList) {
        for(Shipment__c s : newList){
            s.Status__c = 'Created';
        }
        update newList;
    }
}
