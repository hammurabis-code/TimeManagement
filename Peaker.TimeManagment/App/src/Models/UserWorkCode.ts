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

    constructor(departmentId: number, workCodeId: number, basecode: string, desc: string
        , area: string, sub: string, jobNumberRequired: boolean) {
        this.DepartmentId = departmentId;
        this.WorkCodeId = workCodeId;
        this.baseCode = basecode;
        this.description = desc;
        this.area = area;
        this.sub = sub;
        this.IsJobNumberRequired = jobNumberRequired;
    }
}