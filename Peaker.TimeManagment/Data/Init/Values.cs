using Peaker.TimeManagment.Models.Data;
using System.Collections.Generic;

namespace Peaker.TimeManagment.Data.Init
{
    public static class Values
    {
        public static List<WorkCode> GetInitialWorkCodes()
        {
            List<WorkCode> codes = new List<WorkCode>();
            codes.Add(new WorkCode()
            {
                Description = "AIRDUCT REPAIR LEFT",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "ADL",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "AIRDUCT REPAIR RIGHT",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "ADR",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "AUX DR BLOW REBUILD",
                Area = "COMPS",
                Sub = "H",
                BaseCode = "AXB",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "AUX DR TURBO REBUILD",
                Area = "COMPS",
                Sub = "H",
                BaseCode = "AXT",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "BEREAVEMENT",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "BER",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "BORING MACH MILLNG",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "BMA",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "BORING MACH MAINT",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "BMM",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "CRANKCASE PRESSURE",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "CCP",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "COMMUTER GOV",
                Area = "GOV",
                Sub = "L",
                BaseCode = "COM",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TEARDOWN/CLEAN",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "CP1",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "INSPECT/REPAIR",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "CP2",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "ASSEMBLE",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "CP3",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "MAGNAFLUX",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "CPM",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "WELDING",
                Area = "CASE & PAN",
                Sub = "H",
                BaseCode = "CPW",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "COURT",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "CRT",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "PRODUCTION CUT",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "CUT",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "AS BUILT/INSTALL DRAWG",
                Area = "ECS - 11. FINAL DOCUMENTATION",
                Sub = "L",
                BaseCode = "EAB",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "ASSY-DOCUMENTATION",
                Area = "ECS - 11. FINAL DOCUMENTATION",
                Sub = "L",
                BaseCode = "EAD",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "CONTRACT REVIEW",
                Area = "ECS - 01. PROJECT PLANNING",
                Sub = "L",
                BaseCode = "ECR",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "DESIGN-MECHANICAL",
                Area = "ECS - 02. DESIGN",
                Sub = "L",
                BaseCode = "EDM",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "DESIGN REVIEW MTGS.",
                Area = "ECS - 02. DESIGN",
                Sub = "L",
                BaseCode = "EDR",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "DESIGN-SYSTEM",
                Area = "ECS - 02. DESIGN",
                Sub = "L",
                BaseCode = "EDS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FAB-ELECTRICAL INTERF",
                Area = "ECS - 04. IN HOUSE FABRICATION",
                Sub = "L",
                BaseCode = "EFE",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FAB-MECHANICAL INTEF",
                Area = "ECS - 04. IN HOUSE FABRICATION",
                Sub = "L",
                BaseCode = "EFM",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FAB CONTROL PANEL",
                Area = "ECS - 04. IN HOUSE FABRICATION",
                Sub = "L",
                BaseCode = "EFP",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FIELD SERVICE–SYSTEMS",
                Area = "ECS – 13. GENERAL",
                Sub = "L",
                BaseCode = "EFS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "EGB GOV",
                Area = "GOV",
                Sub = "L",
                BaseCode = "EGB",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "INSTALLATION COMPONENTS",
                Area = "ECS - 07. INSTALLATION",
                Sub = "L",
                BaseCode = "EIC",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "INST/DEMO",
                Area = "ECS - 07. INSTALLATION",
                Sub = "L",
                BaseCode = "EID",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "IN HOUSE TESTING",
                Area = "ECS - 05. VALIDATION",
                Sub = "L",
                BaseCode = "EIT",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LOST TIME",
                Area = "ECS - 10. ON-SITE NON PRODUCTIVE TIME",
                Sub = "L",
                BaseCode = "ELT",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TEARDOWN/CLEAN",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "EN1",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "REPAIR/REBUILD",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "EN2",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "ASSEMBLE/TEST/SHIP",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "EN3",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "MAGNAFLUX",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "ENM",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "WELDING",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "ENW",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PROGRAMMING & CONFIG",
                Area = "ECS - 04. IN HOUSE FABRICATION",
                Sub = "L",
                BaseCode = "EPC",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PREPARATION JOB SITE",
                Area = "ECS - 06. FIELD WORK PREPARATION",
                Sub = "L",
                BaseCode = "EPJ",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PREP-START/INSTALL/CK",
                Area = "ECS - 08. VERIFICATION",
                Sub = "L",
                BaseCode = "EPK",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PROJECT MANAGEMENT",
                Area = "ECS - 01. PROJECT PLANNING",
                Sub = "L",
                BaseCode = "EPM",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PROCUREMENT",
                Area = "ECS - 03. MATERIAL",
                Sub = "L",
                BaseCode = "EPR",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "SHIPPING",
                Area = "ECS - 06. FIELD WORK PREPARATION",
                Sub = "L",
                BaseCode = "EPS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PREP TRAVEL",
                Area = "ECS - 06. FIELD WORK PREPARATION",
                Sub = "L",
                BaseCode = "EPT",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "QUOTE/PROPOSAL",
                Area = "ECS - 01. PROJECT PLANNING",
                Sub = "L",
                BaseCode = "EQT",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "ESG REDO",
                Area = "ECS - 12. POST PROJECT SUPPORT",
                Sub = "L",
                BaseCode = "ERE",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "STANDBY TIME-CUSTOMER",
                Area = "ECS - 10. ON-SITE NON PRODUCTIVE TIME",
                Sub = "L",
                BaseCode = "ESC",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "SITE SURVEY",
                Area = "ECS - 01. PROJECT PLANNING",
                Sub = "L",
                BaseCode = "ESS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "START UP TESTING",
                Area = "ECS - 08. VERIFICATION",
                Sub = "L",
                BaseCode = "EST",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TRAINING-CUSTOMER",
                Area = "ECS - 09. TRAINING",
                Sub = "L",
                BaseCode = "ETC",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TEST PLAN DEVELOPMENT",
                Area = "ECS - 05. VALIDATION",
                Sub = "L",
                BaseCode = "ETP",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TROUBLE SHOOTING",
                Area = "ECS - 12. POST PROJECT SUPPORT",
                Sub = "L",
                BaseCode = "ETS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TRAVEL",
                Area = "ECS - 13. GENERAL",
                Sub = "L",
                BaseCode = "ETV",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "WIRING-FIELD",
                Area = "ECS - 07. INSTALLATION",
                Sub = "L",
                BaseCode = "EWF",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "WARRANTY/TROUBLE SHT",
                Area = "ECS - 12. POST PROJECT SUPPORT",
                Sub = "L",
                BaseCode = "EWT",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "EXPEDITING",
                Area = "ECS - 03. MATERIAL",
                Sub = "L",
                BaseCode = "EXE",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FLOATING HOLIDAY",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "FHL",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "MAGNAFLUX",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FMG",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FIELD SERVICE REBUILD",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FRB",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PEAKER & OIL RIGS",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FS1",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "BOAT SERVICE",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FS2",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LOCO",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FS3",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "GENERATOR SET",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FS4",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FIELD SERVICE MAINT",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FSM",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FIELD SERVICE JOB PREP",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FSP",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "FIELD SERVICE SALES",
                Area = "FIELD SERVICE",
                Sub = "O",
                BaseCode = "FSS",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "WELDING",
                Area = "FIELD SERVICE",
                Sub = "L",
                BaseCode = "FSW",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "GOV DR REBUILD",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "GDR",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "GOVERNOR",
                Area = "GOV",
                Sub = "L",
                BaseCode = "GOV",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "HOLIDAY",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "HOL",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "HONE LINERS",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "HON",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "INVENTORY PROJECT",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "INV",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LOCO ENGINE REMOVAL",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "LO1",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LOCO ENGINE INSTALL",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "LO2",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LOCO TESTING",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "LO3",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LUBE OIL PUMP",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "LOP",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "LUBE OIL SCAVENGING",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "LOS",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "MAGNAFLUX",
                Area = "COMPS",
                Sub = "H",
                BaseCode = "MAD",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "MAINTENANCE",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "MAI",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "MISC",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "MIS",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "MEETING",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "MTG",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "OFF W/O PAY",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "OFF",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "MAGNAFLUX",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "P2M",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TEARDOWN",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "PA1",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "INSPECT & REPAIR",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "PA2",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "ASSEMBLE",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "PA3",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "OFF WITH PAY",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "PER",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "PNUMATIC GOV",
                Area = "GOV",
                Sub = "L",
                BaseCode = "PGA",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "PGE GOV",
                Area = "GOV",
                Sub = "L",
                BaseCode = "PGE",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "VAN SERVO GOV",
                Area = "GOV",
                Sub = "L",
                BaseCode = "PGV",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "MISC REBUILD",
                Area = "OTHER PRODUCTION",
                Sub = "O",
                BaseCode = "REB",
                IsEngineeringCode = false,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "REWORK",
                Area = "OTHER PRODUCTION",
                Sub = "O",
                BaseCode = "REW",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "ROCKER ARMS",
                Area = "ENGINE",
                Sub = "H",
                BaseCode = "REW",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "SICK WITH PAY",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "SIC",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "SOAKBACK PUMP & MOTOR",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "SPM",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "SHIPPING & RECEIVING",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "SRV",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "SALES & SERVICE SUPPT",
                Area = "ECS - 13. GENERAL",
                Sub = "L",
                BaseCode = "SSS",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = true,
                IsOfficeCode = false,
                IsShopCode = false,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TEST CELL",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "TCC",
                IsEngineeringCode = true,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "TRAINING",
                Area = "OVERHEAD",
                Sub = "O",
                BaseCode = "TRG",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = false,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "VACATION",
                Area = "TIME OFF",
                Sub = "O",
                BaseCode = "VAC",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "WELDING",
                Area = "OTHER PRODUCTION",
                Sub = "H",
                BaseCode = "WAD",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });

            codes.Add(new WorkCode()
            {
                Description = "WORKERS COMP",
                Area = "TIME OFF",
                Sub = "L",
                BaseCode = "WKC",
                IsEngineeringCode = true,
                IsFieldServiceCode = true,
                IsGovernmentCode = true,
                IsOfficeCode = true,
                IsShopCode = true,
                IsJobNumberRequired = false
            });

            codes.Add(new WorkCode()
            {
                Description = "WATER PUMPS",
                Area = "COMPS",
                Sub = "L",
                BaseCode = "WPS",
                IsEngineeringCode = false,
                IsFieldServiceCode = false,
                IsGovernmentCode = false,
                IsOfficeCode = false,
                IsShopCode = true,
                IsJobNumberRequired = true
            });
            return codes;
        }

        public static List<Department> GetInitialDepartments()
        {
            List<Department> departments = new List<Department>();
            departments.Add(new Department()
                {
                    Description = "Engineering",
                    BaseCode = "ESG"
                }
            );
            departments.Add(new Department()
            {
                Description = "Field Service",
                BaseCode = "FS"
            }
            );
            departments.Add(new Department()
            {
                Description = "Government",
                BaseCode = "GOV"
            }
            );
            departments.Add(new Department()
            {
                Description = "Office",
                BaseCode = "OFFICE"
            }
            );
            departments.Add(new Department()
            {
                Description = "Shop",
                BaseCode = "SHOP"
            }
            );
            return departments;
        }
    }
}