export class WorkCode {
    Id: number;
    BaseCode: string;
    Description: string;
    Area: string;
    Sub: string;
    IsJobNumberRequired: boolean;
    IsEngineeringCode: boolean;
    IsFieldServiceCode: boolean;
    IsGovernmentCode: boolean;
    IsOfficeCode: boolean;
    IsShopCode: boolean;

    constructor(id: number, baseCode: string, description: string, area: string, sub: string, isJobNumberRequired: boolean,
        isEngineeringCode: boolean, isFieldServiceCode: boolean, isGovernmentCode: boolean, isOfficeCode: boolean, isShopCode: boolean) {
        this.Id = id;
        this.BaseCode = baseCode;
        this.Description = description;
        this.Area = area;
        this.Sub = sub;
        this.IsJobNumberRequired = isJobNumberRequired;
        this.IsEngineeringCode = isEngineeringCode;
        this.IsFieldServiceCode = isFieldServiceCode;
        this.IsGovernmentCode = isGovernmentCode;
        this.IsOfficeCode = isOfficeCode;
        this.IsShopCode = isShopCode;
    }


}