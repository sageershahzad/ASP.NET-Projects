namespace TimeTracker2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PositionFieldAdded : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Employees", "Position", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Employees", "Position");
        }
    }
}
