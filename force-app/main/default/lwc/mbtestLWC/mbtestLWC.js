import { LightningElement } from 'lwc';

export default class MbtestLWC extends LightningElement {
    handleClick(event) {
        const logger = this.template.querySelector('c-logger');
        logger.error('Hello, world!').addTag('some important tag');
        logger.warn('Hello, world!');
        logger.info('Hello, world!');
        logger.debug('Hello, world!');
        logger.fine('Hello, world!');
        logger.finer('Hello, world!');
        logger.finest('Hello, world!');
        logger.saveLog();
        this.clickedButtonLabel = event.target.label;
    }
}
