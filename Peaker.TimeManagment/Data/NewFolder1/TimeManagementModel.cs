namespace Peaker.TimeManagment.Data
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TimeManagementModel : DbContext
    {
        public TimeManagementModel()
            : base("name=TimeManagement")
        {
        }

        public virtual DbSet<department> departments { get; set; }
        public virtual DbSet<hourentry> hourentries { get; set; }
        public virtual DbSet<timeentry> timeentries { get; set; }
        public virtual DbSet<userdetail> userdetails { get; set; }
        public virtual DbSet<userjobnumber> userjobnumbers { get; set; }
        public virtual DbSet<workcode> workcodes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<department>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<department>()
                .Property(e => e.BaseCode)
                .IsUnicode(false);

            modelBuilder.Entity<department>()
                .HasMany(e => e.userdetails)
                .WithMany(e => e.departments)
                .Map(m => m.ToTable("userdepartments", "timemanagement").MapLeftKey("departmentId").MapRightKey("userDetailId"));

            modelBuilder.Entity<hourentry>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<timeentry>()
                .Property(e => e.jobnumber)
                .IsUnicode(false);

            modelBuilder.Entity<timeentry>()
                .Property(e => e.comments)
                .IsUnicode(false);

            modelBuilder.Entity<timeentry>()
                .Property(e => e.timeentrycol)
                .IsUnicode(false);

            modelBuilder.Entity<timeentry>()
                .HasMany(e => e.hourentries)
                .WithRequired(e => e.timeentry)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<userdetail>()
                .Property(e => e.userId)
                .IsUnicode(false);

            modelBuilder.Entity<userdetail>()
                .Property(e => e.accountingName)
                .IsUnicode(false);

            modelBuilder.Entity<userdetail>()
                .HasMany(e => e.timeentries)
                .WithRequired(e => e.userdetail)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<userdetail>()
                .HasMany(e => e.userjobnumbers)
                .WithRequired(e => e.userdetail)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<userdetail>()
                .HasMany(e => e.workcodes)
                .WithMany(e => e.userdetails)
                .Map(m => m.ToTable("userworkcodes", "timemanagement").MapLeftKey("userDetailId").MapRightKey("workCodeId"));

            modelBuilder.Entity<userjobnumber>()
                .Property(e => e.jobnumbervalue)
                .IsUnicode(false);

            modelBuilder.Entity<workcode>()
                .Property(e => e.BaseCode)
                .IsUnicode(false);

            modelBuilder.Entity<workcode>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<workcode>()
                .Property(e => e.Area)
                .IsUnicode(false);

            modelBuilder.Entity<workcode>()
                .Property(e => e.Sub)
                .IsUnicode(false);
        }
    }
}
