using MySql.Data.Entity;
using System.Data.Entity;
using Peaker.TimeManagment.Models.Data;
using System.Data.Entity.ModelConfiguration;

namespace Peaker.TimeManagment.Data
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class PeakerContext : DbContext
    {

        public DbSet<TimeEntry> TimeEntries { get; set; }
        public DbSet<UserDetail> UserDetails { get; set; }
        public DbSet<WorkCode> WorkCodes { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<JobNumber> JobNumbers { get; set; }
        public DbSet<HourEntry> HourEntries { get; set; }

        public PeakerContext() : base("DefaultConnection")
        {
            Database.SetInitializer(new MySqlInitializer());
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<TimeEntry>().MapToStoredProcedures();
            modelBuilder.Entity<UserDetail>().MapToStoredProcedures();
            modelBuilder.Entity<WorkCode>().MapToStoredProcedures();
            modelBuilder.Entity<Department>().MapToStoredProcedures();
            modelBuilder.Entity<JobNumber>().MapToStoredProcedures();
            modelBuilder.Entity<HourEntry>().MapToStoredProcedures();

            modelBuilder.Entity<UserDetail>()
                .HasMany(u => u.WorkCodes)
                .WithMany(c => c.UserDetails)
                .Map(uc => {
                    uc.MapLeftKey("UserDetailId");
                    uc.MapRightKey("WorkCodeId");
                    uc.ToTable("UserWorkCode");
                });

            modelBuilder.Entity<UserDetail>()
               .HasMany(u => u.Departments)
               .WithMany(c => c.UserDetails)
               .Map(uc => {
                   uc.MapLeftKey("UserDetailId");
                   uc.MapRightKey("DepartmentId");
                   uc.ToTable("UserDepartment");
               });

            modelBuilder.Entity<JobNumber>()
                .HasRequired(j => j.UserDetail)
                .WithMany(j => j.UsedJobNumbers)
                .HasForeignKey(j => j.UserDetailId); ;

            modelBuilder.Entity<TimeEntry>()
                .HasRequired(t => t.UserDetail)
                .WithMany(t => t.TimeEntries)
                .HasForeignKey(t => t.UserDetailId);

            modelBuilder.Entity<HourEntry>()
               .HasRequired(t => t.TimeEntry)
               .WithMany(t => t.Hours)
               .HasForeignKey(t => t.TimeEntryId);

            modelBuilder.Configurations.Add(new HourEntryConfiguration());
        }
    }

    public class HourEntryConfiguration : EntityTypeConfiguration<HourEntry>
    {
        public HourEntryConfiguration()
        {
            Property(h => h.Duration).HasPrecision(precision: 4, scale: 2);
        }
    }
}