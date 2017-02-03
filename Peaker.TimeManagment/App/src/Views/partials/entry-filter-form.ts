import { autoinject } from 'aurelia-dependency-injection';
import { EntryFilter, ExportType, TimeEntry, User } from '../../Models/Models';
import { bindable } from 'aurelia-framework';
import { TimeEntryService } from '../../Services/time-entry-service'
import { ApplicationState } from '../../Application-State'

@autoinject
export class EntryFilterForm {
    @bindable filterCriteria: EntryFilter;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number;
    @bindable exportTypes: ExportType[] = [];
    @bindable exportType: ExportType;
    @bindable showExportedFilter: boolean;
    @bindable showExportTypeFilter: boolean;
    @bindable showUserFilter: boolean;
    @bindable showButton: boolean = true;
    @bindable users: User[]
    @bindable exportTypeFlag: boolean;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService) { }

    getEntries() {
        console.log(this.exportTypeFlag);
        if (this.exportType != undefined) {
            if (this.exportType.Type == 1) {
                this.filterCriteria.ExportedToNavision = this.exportTypeFlag;
                this.filterCriteria.ExportedToPayroll = null;
            }
            else {
                this.filterCriteria.ExportedToNavision = null;
                this.filterCriteria.ExportedToPayroll = this.exportTypeFlag;
            }
        }
        else {
            this.filterCriteria.ExportedToNavision = null;
            this.filterCriteria.ExportedToPayroll = null;
        }
        this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                this.total = 0;
                for (var count = 0; count < this.timeEntries.length; count++) {
                    this.total += +this.timeEntries[count].userHours;
                }
            });
    }
}