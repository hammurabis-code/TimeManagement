import { autoinject } from 'aurelia-dependency-injection';
import { ApplicationState } from './application-state';
export class NavBar {

    constructor(private appState: ApplicationState) { }

    showNav(navItem) {
        console.log(navItem.role);
        console.log(this.appState.isInRole(navItem.role));
        return this.appState.isInRole(navItem.role);
    }

}