import { autoinject } from 'aurelia-dependency-injection';
import { EntryFilter, ExportType, TimeEntry, User, UserListItem } from '../../Models/Models';
import { bindable } from 'aurelia-framework';
import { AdminService, TimeEntryService } from '../../Services/services'
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
    @bindable noEntriesFound: boolean = false;
    @bindable userFilterList: UserListItem[] = [];
    @bindable selectedUser: UserListItem;

    constructor(private appState: ApplicationState, private timeEntryService: TimeEntryService, private adminService: AdminService) {
        if (this.exportTypes.length == 0) {
            this.exportTypes.push(undefined);
            this.exportTypes.push(new ExportType(1, 'Navision'));
            this.exportTypes.push(new ExportType(2, 'Payroll'))
        }
        console.log('Filter form: ' + this.showUserFilter);
        if (this.userFilterList.length == 0) {
            this.adminService.getUsersList()
                .then(list => {
                    this.userFilterList = list;
                    this.userFilterList.splice(0, 0, undefined);
                })
        }
    }

    selectedUserChanged(newvalue: UserListItem) {
        console.log('Selected user changed');
        if (newvalue != undefined) {
            this.filterCriteria.UserDetailId = newvalue.UserDetailId;
            this.filterCriteria.ShowAllUsers = false;
        }
        else {
            this.filterCriteria.UserDetailId = null;
            this.filterCriteria.ShowAllUsers = true;
        }
    }

    getEntries() {
        console.log(this.exportTypeFlag);
        if (this.exportType != undefined) {
            console.log('Export type: ' + this.exportType.Description);
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
                if (this.timeEntries.length > 0) {
                    this.noEntriesFound = false;
                    for (var count = 0; count < this.timeEntries.length; count++) {
                        this.total += +this.timeEntries[count].userHours;
                    }
                }
                else {
                    this.noEntriesFound = true;
                }
            });
    }
}