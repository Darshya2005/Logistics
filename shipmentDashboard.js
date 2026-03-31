import { LightningElement, track } from 'lwc';
import getShipments from '@salesforce/apex/ShipmentController.getShipments';

export default class ShipmentDashboard extends LightningElement {
    @track shipments;

    loadData() {
        getShipments()
            .then(result => {
                this.shipments = result;
            })
            .catch(error => {
                console.error(error);
            });
    }
}
