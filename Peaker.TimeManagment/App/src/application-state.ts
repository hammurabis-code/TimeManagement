import { autoinject } from 'aurelia-dependency-injection';
import { AccountService, ValuesService } from './Services/services';
import { User, TimeEntry, WorkCode } from './Models/Models';

@autoinject
export class ApplicationState {
    returnRoute: string;
    defaultRoute: string;
    currentUser: User;
    activeWorkCodes: WorkCode[];
    loggedIn: boolean;

    constructor(private accountService: AccountService, private valuesService: ValuesService) {
        this.currentUser = null;
        this.returnRoute = '';
        this.defaultRoute = 'entry';
        this.activeWorkCodes = new Array<WorkCode>();
        this.loggedIn = false;
    }

    get authenticated(): Promise<boolean> {
        return new Promise(resolve => {
            this.accountService.getAuthenticated()
                .then(response => {
                    this.loggedIn = response;
                    resolve(response);
                }).catch(err => {
                    console.log('Error getting Authentication: ' + err);
                    resolve(false);
                })
        });
    }

    fillUser(): Promise<boolean> {
        return new Promise(resolve => {
            // this.valuesService.getWorkCodes()
            //     .then(codes => {
            //         console.log("Got Codes.");
            //         console.log(codes);
            //         codes.forEach(code => {
            //             this.activeWorkCodes.push(
            //                 new WorkCode(code.id, code.baseCode, code.description, code.area, code.sub, code.isJobNumberRequired, code.isEngineeringCode, code.isFieldServiceCode, code.isGovernmentCode, code.isOfficeCode, code.isShopCode)
            //             );
            //         });
            //     })
            //     .then(r => {
            this.accountService.getUserInfo().then(user => {
                this.currentUser = user;
                let codes = new Array<WorkCode>();
                codes = this.activeWorkCodes.filter(c =>
                    this.currentUser.UserWorkCodes.find(uc => uc.baseCode == c.baseCode))
                if (codes.length != 0) {
                    this.activeWorkCodes = codes;
                }
                resolve(true)
            })
        })
            .catch(err => {
                console.log('Error filling user model: ' + err);
            });
        // })
    }

    addPendingTimeEntries(pendingEntries: TimeEntry[], entryDate: Date) {
        for (var count = 0; count < pendingEntries.length; count++) {
            pendingEntries[count].date = entryDate;
            this.currentUser.pendingTimeEntries.push(pendingEntries[count]);
        }
    }

    clearPendingEntries() {
        this.currentUser.pendingTimeEntries.length = 0;
    }
}