import { Router } from 'aurelia-router';
import { autoinject } from 'aurelia-dependency-injection';
import { TimeEntry } from './Models/Models';
import { ApplicationState } from './application-state';
import { TimeEntryService } from './Services/Services';

@autoinject
export class submitTime {
    heading: string;
    timeEntries: TimeEntry[]
    total: number;
    entryDate: Date;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private router: Router) {
        this.heading = 'Review Entries';
        this.timeEntries = new Array<TimeEntry>();
        this.total = 0;
    }

    activate() {
        if (this.appState.currentUser.hasPendingEntries) {
            this.total = 0;
            for (var count = 0; count < this.appState.currentUser.pendingTimeEntries.length; count++) {
                this.timeEntries.push(this.appState.currentUser.pendingTimeEntries[count]);
                this.total += +this.appState.currentUser.pendingTimeEntries[count].userHours;
                if (this.entryDate === null) {
                    this.entryDate = this.appState.currentUser.pendingTimeEntries[count].entryDate;
                }
            }
            this.appState.clearPendingEntries();
        }
    }

    returnToEdit() {
        this.appState.addPendingTimeEntries(this.timeEntries, this.entryDate);
        this.timeEntries.length = 0;
        this.router.navigate('entry');
    }

    submit() {
        this.router.isNavigating = true;
        this.timeEntryService.saveEntries(this.timeEntries)
            .then(success => {
                if (success) {
                    this.appState.clearPendingEntries();
                    this.timeEntries.length = 0;
                    this.router.isNavigating = false;
                    this.router.navigateToRoute('entry', { 'submitted': true });
                }
            });
        this.router.isNavigating = false;
    }
}