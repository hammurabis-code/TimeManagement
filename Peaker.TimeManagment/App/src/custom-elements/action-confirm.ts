import { autoinject, bindable } from "aurelia-framework";
import { DialogService } from "aurelia-dialog";
import { Confirm } from "./confirm";

@autoinject
export class ActionConfirm {

    @bindable
    action = () => { };

    @bindable
    msg = "Are you sure";

    @bindable buttonName: string = 'Action';
    @bindable buttonClass: string = 'btn-primary';

    constructor(public dlg: DialogService) {

    }

    do() {
        this.dlg.open({
            viewModel: Confirm
            , model: this.msg
        }).then(result => {
            if (result.wasCancelled) return;
            console.log(this.action);
            this.action();
        });
    }
}
