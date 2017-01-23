import { DOM, customAttribute, inject } from 'aurelia-framework';
import 'bootstrap-datepicker';

@customAttribute('datepicker')
@inject(DOM.Element)
export class DatepickerCustomAttribute {
    private value: Date;

    constructor(private element: Element) {
    }

    public bind() {
        let datepickerOptions: DatepickerOptions = { autoclose: true, format: 'yyyy-mm-dd', orientation: "bottom" };

        $(this.element)
            .datepicker(datepickerOptions)
            .on('changeDate', evt => {
                this.value = evt.date;
            });
    }

    public detached() {
        $(this.element).datepicker('destroy');
    }
}