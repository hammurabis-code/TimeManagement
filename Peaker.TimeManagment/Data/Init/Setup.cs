using System.Linq;

namespace Peaker.TimeManagment.Data.Init
{
    public static class Setup
    {
        public static void Init(PeakerContext context) {
            
            InitializeWorkCodes(context);
            InitializeDepartments(context);
        }

        public static void InitializeWorkCodes(PeakerContext context) {
            if (!context.WorkCodes.Any())
            {
                context.WorkCodes.AddRange(Values.GetInitialWorkCodes());
                context.SaveChanges();
            }
        }

        public static void InitializeDepartments(PeakerContext context)
        {
            if (!context.Departments.Any())
            {
                context.Departments.AddRange(Values.GetInitialDepartments());
                context.SaveChanges();
            }
        }
    }
}