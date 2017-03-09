import { bindable } from 'aurelia-framework';

export class Loading {
    @bindable isLoading: boolean;

    constructor() {
        this.isLoading = false;
    }
}