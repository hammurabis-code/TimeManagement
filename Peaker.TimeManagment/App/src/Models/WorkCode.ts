export class WorkCode {
    id: number;
    baseCode: string;
    description: string;
    area: string;
    sub: string;
    fullCode: string;
    isJobNumberRequired: boolean;
    isEngineeringCode: boolean;
    isFieldServiceCode: boolean;
    isGovernmentCode: boolean;
    isOfficeCode: boolean;
    isShopCode: boolean;

    constructor(id: number, baseCode: string, description: string, area: string, sub: string, isJobNumberRequired: boolean,
        isEngineeringCode: boolean, isFieldServiceCode: boolean, isGovernmentCode: boolean, isOfficeCode: boolean, isShopCode: boolean) {
        this.id = id;
        this.baseCode = baseCode;
        this.description = description;
        this.area = area;
        this.sub = sub;
        this.isJobNumberRequired = isJobNumberRequired;
        this.isEngineeringCode = isEngineeringCode;
        this.isFieldServiceCode = isFieldServiceCode;
        this.isGovernmentCode = isGovernmentCode;
        this.isOfficeCode = isOfficeCode;
        this.isShopCode = isShopCode;
    }


}