import { LightningElement } from 'lwc';

export default class MbtestLWC extends LightningElement {
    handleClick(event) {
        this.clickedButtonLabel = event.target.label;
    }
}
