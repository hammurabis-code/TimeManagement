import { autoinject, bindable } from 'aurelia-framework';
import { ApplicationState } from './application-state';
import { Router } from 'aurelia-router';

@autoinject
export class NavBar {
    @bindable router: Router;
    @bindable appState: ApplicationState;

}