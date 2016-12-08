import { autoinject } from 'aurelia-dependency-injection';
import { EntryFilter, TimeEntry } from '../../Models/Models';
import { bindable } from 'aurelia-framework';
import { TimeEntryService } from '../../Services/time-entry-service'

@autoinject
export class EntryFilterForm {
    @bindable filterCriteria: EntryFilter;
    @bindable timeEntries: TimeEntry[] = [];
    @bindable total: number;
    @bindable exportTypes: string[] = [];
    @bindable showExportedFilter: boolean;
    @bindable showExportTypeFilter: boolean;

    constructor(private timeEntryService: TimeEntryService) { }

    getEntries() {
        this.timeEntryService.get(this.filterCriteria)
            .then(entries => {
                this.timeEntries = entries;
                this.total = 0;
                for (var count = 0; count < this.timeEntries.length; count++) {
                    this.total += +this.timeEntries[count].hours;
                }
            });
    }
}