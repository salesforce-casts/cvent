import { LightningElement} from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account'

export default class RecordForm extends LightningElement {
    recordId;

    obejctName = ACCOUNT_OBJECT;
}