export class UserWorkCode {
    DepartmentId: number;
    WorkCodeId: number;
    baseCode: string;
    description: string;
    area: string;
    sub: string;
    IsJobNumberRequired: boolean;
    IsSelected: boolean;

    get fullCode(): string {
        return this.baseCode + ' - ' + this.description;
    }
}