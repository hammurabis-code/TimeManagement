import { bindable, bindingMode, autoinject } from 'aurelia-framework';

function isNavigationOrSelectionKey(e) {
    // Allow: backspace, delete, tab, escape, enter and .
    if ([46, 8, 9, 27, 13, 110, 190].indexOf(e.keyCode) !== -1 ||
        // Allow: Ctrl+A/X/C/V, Command+A/X/C/V
        ([65, 67, 86, 88].indexOf(e.keyCode) !== -1 && (e.ctrlKey === true || e.metaKey === true)) ||
        // Allow: home, end, left, right, down, up
        (e.keyCode >= 35 && e.keyCode <= 40) ||
        //Android chrome keycode issue:
        //http://stackoverflow.com/questions/17139039/keycode-is-always-zero-in-chrome-for-android
        (e.keycode == 0 || e.keycode == 229)) {
        // let it happen, don't do anything
        return true;
    }
    return false;
}

// http://stackoverflow.com/a/995193/725866
function keydown(e) {
    this.keyCode = e.keyCode || e.which;
    this.charCode = e.charCode;
    if (this.keyCode == 0 || this.keyCode == 229) {
        return;
    }
    if (isNavigationOrSelectionKey(e)) {
        return;
    }
    // If it's not a number, prevent the keypress...
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105 || e.currentTarget.value.length === 5)) {
        e.preventDefault();
    }
    if (exceedsLengthLimit(e)) {
        e.preventDefault();
    }
}

function exceedsLengthLimit(e) {
    if (e.currentTarget.value.length > 4) {
        return true;
    }
    return false;
}

@autoinject
export class JobNumberInputCustomAttribute {
    @bindable jobNumber: string;
    @bindable({ defaultBindingMode: 2 }) jobNumberError: boolean;

    constructor(private element: Element) {
    }

    attached() {
        this.element.addEventListener('keydown', keydown);
    }

    detached() {
        this.element.removeEventListener('keydown', keydown);
    }

}