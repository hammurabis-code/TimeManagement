export class UserWorkCode {
    DepartmentId: number;
    WorkCodeId: number;
    baseCode: string;
    description: string;
    area: string;
    sub: string;
    isJobCodeRequired: boolean;
    IsSelected: boolean;

    get fullCode(): string {
        return this.baseCode + ' - ' + this.description;
    }
}