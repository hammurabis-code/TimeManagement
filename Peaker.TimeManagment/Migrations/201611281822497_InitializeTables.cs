namespace Peaker.TimeManagment.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitializeTables : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Departments",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Description = c.String(nullable: false, unicode: false),
                        BaseCode = c.String(nullable: false, unicode: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.UserDetails",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, unicode: false),
                        AccountingName = c.String(nullable: false, unicode: false),
                        DefaultJobEntries = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.TimeEntries",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserDetailId = c.Int(nullable: false),
                        Date = c.DateTime(nullable: false, precision: 0),
                        JobNumber = c.String(unicode: false),
                        Comments = c.String(unicode: false),
                        Exported = c.Boolean(nullable: false),
                        Code_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.WorkCodes", t => t.Code_Id)
                .ForeignKey("dbo.UserDetails", t => t.UserDetailId, cascadeDelete: true)
                .Index(t => t.UserDetailId)
                .Index(t => t.Code_Id);
            
            CreateTable(
                "dbo.WorkCodes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        BaseCode = c.String(nullable: false, unicode: false),
                        Description = c.String(nullable: false, unicode: false),
                        Area = c.String(nullable: false, unicode: false),
                        Sub = c.String(nullable: false, unicode: false),
                        IsJobNumberRequired = c.Boolean(nullable: false),
                        IsEngineeringCode = c.Boolean(nullable: false),
                        IsFieldServiceCode = c.Boolean(nullable: false),
                        IsGovernmentCode = c.Boolean(nullable: false),
                        IsOfficeCode = c.Boolean(nullable: false),
                        IsShopCode = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.HourEntries",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        TimeEntryId = c.Int(nullable: false),
                        Duration = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Type = c.String(nullable: false, unicode: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.TimeEntries", t => t.TimeEntryId, cascadeDelete: true)
                .Index(t => t.TimeEntryId);
            
            CreateTable(
                "dbo.JobNumbers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserDetailId = c.Int(nullable: false),
                        JobNumberValue = c.String(nullable: false, unicode: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.UserDetails", t => t.UserDetailId, cascadeDelete: true)
                .Index(t => t.UserDetailId);
            
            CreateTable(
                "dbo.UserDepartment",
                c => new
                    {
                        UserDetailId = c.Int(nullable: false),
                        DepartmentId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserDetailId, t.DepartmentId })
                .ForeignKey("dbo.UserDetails", t => t.UserDetailId, cascadeDelete: true)
                .ForeignKey("dbo.Departments", t => t.DepartmentId, cascadeDelete: true)
                .Index(t => t.UserDetailId)
                .Index(t => t.DepartmentId);
            
            CreateTable(
                "dbo.UserWorkCode",
                c => new
                    {
                        UserDetailId = c.Int(nullable: false),
                        WorkCodeId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.UserDetailId, t.WorkCodeId })
                .ForeignKey("dbo.UserDetails", t => t.UserDetailId, cascadeDelete: true)
                .ForeignKey("dbo.WorkCodes", t => t.WorkCodeId, cascadeDelete: true)
                .Index(t => t.UserDetailId)
                .Index(t => t.WorkCodeId);
            
            CreateStoredProcedure(
                "dbo.Department_Insert",
                p => new
                    {
                        Description = p.String(maxLength: 1073741823, unicode: false),
                        BaseCode = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `Departments`(
                      `Description`, 
                      `BaseCode`) VALUES (
                      @Description, 
                      @BaseCode);
                      SELECT
                      `Id`
                      FROM `Departments`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.Department_Update",
                p => new
                    {
                        Id = p.Int(),
                        Description = p.String(maxLength: 1073741823, unicode: false),
                        BaseCode = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"UPDATE `Departments` SET `Description`=@Description, `BaseCode`=@BaseCode WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.Department_Delete",
                p => new
                    {
                        Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `Departments` WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.UserDetail_Insert",
                p => new
                    {
                        UserId = p.String(maxLength: 1073741823, unicode: false),
                        AccountingName = p.String(maxLength: 1073741823, unicode: false),
                        DefaultJobEntries = p.Int(),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `UserDetails`(
                      `UserId`, 
                      `AccountingName`, 
                      `DefaultJobEntries`) VALUES (
                      @UserId, 
                      @AccountingName, 
                      @DefaultJobEntries);
                      SELECT
                      `Id`
                      FROM `UserDetails`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.UserDetail_Update",
                p => new
                    {
                        Id = p.Int(),
                        UserId = p.String(maxLength: 1073741823, unicode: false),
                        AccountingName = p.String(maxLength: 1073741823, unicode: false),
                        DefaultJobEntries = p.Int(),
                    },
                body:
                    @"UPDATE `UserDetails` SET `UserId`=@UserId, `AccountingName`=@AccountingName, `DefaultJobEntries`=@DefaultJobEntries WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.UserDetail_Delete",
                p => new
                    {
                        Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `UserDetails` WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.TimeEntry_Insert",
                p => new
                    {
                        UserDetailId = p.Int(),
                        Date = p.DateTime(),
                        JobNumber = p.String(maxLength: 1073741823, unicode: false),
                        Comments = p.String(maxLength: 1073741823, unicode: false),
                        Exported = p.Boolean(),
                        Code_Id = p.Int(),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `TimeEntries`(
                      `UserDetailId`, 
                      `Date`, 
                      `JobNumber`, 
                      `Comments`, 
                      `Exported`, 
                      `Code_Id`) VALUES (
                      @UserDetailId, 
                      @Date, 
                      @JobNumber, 
                      @Comments, 
                      @Exported, 
                      @Code_Id);
                      SELECT
                      `Id`
                      FROM `TimeEntries`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.TimeEntry_Update",
                p => new
                    {
                        Id = p.Int(),
                        UserDetailId = p.Int(),
                        Date = p.DateTime(),
                        JobNumber = p.String(maxLength: 1073741823, unicode: false),
                        Comments = p.String(maxLength: 1073741823, unicode: false),
                        Exported = p.Boolean(),
                        Code_Id = p.Int(),
                    },
                body:
                    @"UPDATE `TimeEntries` SET `UserDetailId`=@UserDetailId, `Date`=@Date, `JobNumber`=@JobNumber, `Comments`=@Comments, `Exported`=@Exported, `Code_Id`=@Code_Id WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.TimeEntry_Delete",
                p => new
                    {
                        Id = p.Int(),
                        Code_Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `TimeEntries` WHERE (`Id` = @Id) AND ((`Code_Id` = @Code_Id) OR ((`Code_Id` IS  NULL) AND (@Code_Id IS  NULL)));"
            );
            
            CreateStoredProcedure(
                "dbo.WorkCode_Insert",
                p => new
                    {
                        BaseCode = p.String(maxLength: 1073741823, unicode: false),
                        Description = p.String(maxLength: 1073741823, unicode: false),
                        Area = p.String(maxLength: 1073741823, unicode: false),
                        Sub = p.String(maxLength: 1073741823, unicode: false),
                        IsJobNumberRequired = p.Boolean(),
                        IsEngineeringCode = p.Boolean(),
                        IsFieldServiceCode = p.Boolean(),
                        IsGovernmentCode = p.Boolean(),
                        IsOfficeCode = p.Boolean(),
                        IsShopCode = p.Boolean(),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `WorkCodes`(
                      `BaseCode`, 
                      `Description`, 
                      `Area`, 
                      `Sub`, 
                      `IsJobNumberRequired`, 
                      `IsEngineeringCode`, 
                      `IsFieldServiceCode`, 
                      `IsGovernmentCode`, 
                      `IsOfficeCode`, 
                      `IsShopCode`) VALUES (
                      @BaseCode, 
                      @Description, 
                      @Area, 
                      @Sub, 
                      @IsJobNumberRequired, 
                      @IsEngineeringCode, 
                      @IsFieldServiceCode, 
                      @IsGovernmentCode, 
                      @IsOfficeCode, 
                      @IsShopCode);
                      SELECT
                      `Id`
                      FROM `WorkCodes`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.WorkCode_Update",
                p => new
                    {
                        Id = p.Int(),
                        BaseCode = p.String(maxLength: 1073741823, unicode: false),
                        Description = p.String(maxLength: 1073741823, unicode: false),
                        Area = p.String(maxLength: 1073741823, unicode: false),
                        Sub = p.String(maxLength: 1073741823, unicode: false),
                        IsJobNumberRequired = p.Boolean(),
                        IsEngineeringCode = p.Boolean(),
                        IsFieldServiceCode = p.Boolean(),
                        IsGovernmentCode = p.Boolean(),
                        IsOfficeCode = p.Boolean(),
                        IsShopCode = p.Boolean(),
                    },
                body:
                    @"UPDATE `WorkCodes` SET `BaseCode`=@BaseCode, `Description`=@Description, `Area`=@Area, `Sub`=@Sub, `IsJobNumberRequired`=@IsJobNumberRequired, `IsEngineeringCode`=@IsEngineeringCode, `IsFieldServiceCode`=@IsFieldServiceCode, `IsGovernmentCode`=@IsGovernmentCode, `IsOfficeCode`=@IsOfficeCode, `IsShopCode`=@IsShopCode WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.WorkCode_Delete",
                p => new
                    {
                        Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `WorkCodes` WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.HourEntry_Insert",
                p => new
                    {
                        TimeEntryId = p.Int(),
                        Duration = p.Decimal(),
                        Type = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `HourEntries`(
                      `TimeEntryId`, 
                      `Duration`, 
                      `Type`) VALUES (
                      @TimeEntryId, 
                      @Duration, 
                      @Type);
                      SELECT
                      `Id`
                      FROM `HourEntries`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.HourEntry_Update",
                p => new
                    {
                        Id = p.Int(),
                        TimeEntryId = p.Int(),
                        Duration = p.Decimal(),
                        Type = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"UPDATE `HourEntries` SET `TimeEntryId`=@TimeEntryId, `Duration`=@Duration, `Type`=@Type WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.HourEntry_Delete",
                p => new
                    {
                        Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `HourEntries` WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.JobNumber_Insert",
                p => new
                    {
                        UserDetailId = p.Int(),
                        JobNumberValue = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"SET SESSION sql_mode='ANSI';INSERT INTO `JobNumbers`(
                      `UserDetailId`, 
                      `JobNumberValue`) VALUES (
                      @UserDetailId, 
                      @JobNumberValue);
                      SELECT
                      `Id`
                      FROM `JobNumbers`
                       WHERE  row_count() > 0 AND `Id`=last_insert_id();"
            );
            
            CreateStoredProcedure(
                "dbo.JobNumber_Update",
                p => new
                    {
                        Id = p.Int(),
                        UserDetailId = p.Int(),
                        JobNumberValue = p.String(maxLength: 1073741823, unicode: false),
                    },
                body:
                    @"UPDATE `JobNumbers` SET `UserDetailId`=@UserDetailId, `JobNumberValue`=@JobNumberValue WHERE `Id` = @Id;"
            );
            
            CreateStoredProcedure(
                "dbo.JobNumber_Delete",
                p => new
                    {
                        Id = p.Int(),
                    },
                body:
                    @"DELETE FROM `JobNumbers` WHERE `Id` = @Id;"
            );
            
        }
        
        public override void Down()
        {
            DropStoredProcedure("dbo.JobNumber_Delete");
            DropStoredProcedure("dbo.JobNumber_Update");
            DropStoredProcedure("dbo.JobNumber_Insert");
            DropStoredProcedure("dbo.HourEntry_Delete");
            DropStoredProcedure("dbo.HourEntry_Update");
            DropStoredProcedure("dbo.HourEntry_Insert");
            DropStoredProcedure("dbo.WorkCode_Delete");
            DropStoredProcedure("dbo.WorkCode_Update");
            DropStoredProcedure("dbo.WorkCode_Insert");
            DropStoredProcedure("dbo.TimeEntry_Delete");
            DropStoredProcedure("dbo.TimeEntry_Update");
            DropStoredProcedure("dbo.TimeEntry_Insert");
            DropStoredProcedure("dbo.UserDetail_Delete");
            DropStoredProcedure("dbo.UserDetail_Update");
            DropStoredProcedure("dbo.UserDetail_Insert");
            DropStoredProcedure("dbo.Department_Delete");
            DropStoredProcedure("dbo.Department_Update");
            DropStoredProcedure("dbo.Department_Insert");
            DropForeignKey("dbo.UserWorkCode", "WorkCodeId", "dbo.WorkCodes");
            DropForeignKey("dbo.UserWorkCode", "UserDetailId", "dbo.UserDetails");
            DropForeignKey("dbo.JobNumbers", "UserDetailId", "dbo.UserDetails");
            DropForeignKey("dbo.TimeEntries", "UserDetailId", "dbo.UserDetails");
            DropForeignKey("dbo.HourEntries", "TimeEntryId", "dbo.TimeEntries");
            DropForeignKey("dbo.TimeEntries", "Code_Id", "dbo.WorkCodes");
            DropForeignKey("dbo.UserDepartment", "DepartmentId", "dbo.Departments");
            DropForeignKey("dbo.UserDepartment", "UserDetailId", "dbo.UserDetails");
            DropIndex("dbo.UserWorkCode", new[] { "WorkCodeId" });
            DropIndex("dbo.UserWorkCode", new[] { "UserDetailId" });
            DropIndex("dbo.UserDepartment", new[] { "DepartmentId" });
            DropIndex("dbo.UserDepartment", new[] { "UserDetailId" });
            DropIndex("dbo.JobNumbers", new[] { "UserDetailId" });
            DropIndex("dbo.HourEntries", new[] { "TimeEntryId" });
            DropIndex("dbo.TimeEntries", new[] { "Code_Id" });
            DropIndex("dbo.TimeEntries", new[] { "UserDetailId" });
            DropTable("dbo.UserWorkCode");
            DropTable("dbo.UserDepartment");
            DropTable("dbo.JobNumbers");
            DropTable("dbo.HourEntries");
            DropTable("dbo.WorkCodes");
            DropTable("dbo.TimeEntries");
            DropTable("dbo.UserDetails");
            DropTable("dbo.Departments");
        }
    }
}
