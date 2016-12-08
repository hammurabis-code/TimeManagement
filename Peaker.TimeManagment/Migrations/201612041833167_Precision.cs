namespace Peaker.TimeManagment.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Precision : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.HourEntries", "Duration", c => c.Decimal(nullable: false, precision: 4, scale: 2));

        }
        
        public override void Down()
        {
            AlterColumn("dbo.HourEntries", "Duration", c => c.Decimal(nullable: false, precision: 18, scale: 2));
            throw new NotSupportedException("Scaffolding create or alter procedure operations is not supported in down methods.");
        }
    }
}
