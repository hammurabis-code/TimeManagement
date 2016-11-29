import { Constants } from './Constants';

export class Helper {
    static getAuthHeader() {
        if (sessionStorage.getItem(Constants.tokenName) != undefined || sessionStorage.getItem(Constants.tokenName) != null) {
            return 'bearer ' + sessionStorage.getItem(Constants.tokenName).toString();
        }
        else {
            return '';
        }
    }

}