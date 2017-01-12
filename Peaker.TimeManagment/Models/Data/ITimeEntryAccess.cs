using Peaker.TimeManagment.Models.Filters;
using Peaker.TimeManagment.Models.View;
using System.Collections.Generic;
using System.Security.Principal;

namespace Peaker.TimeManagment.Models.Data
{
    public interface ITimeEntryAccess
    {
        List<TimeEntryView> GetTimeEntries(EntryFilter filter, IPrincipal user);

        void SetEntryExportedToNavision(TimeEntryView entry);

        void ClearNavisionFlag();

        void ClearPayrollExportFlag();

        decimal GetTotalHours(EntryFilter filter, IPrincipal user);

        void DeleteEntry(TimeEntry entryToDelete);
    }
}
