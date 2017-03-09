import { bindable } from 'aurelia-framework';

export class Loading {
    @bindable loading: boolean;

    constructor() {
        this.loading = false;
    }
}