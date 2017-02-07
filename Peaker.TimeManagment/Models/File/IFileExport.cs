using Peaker.TimeManagment.Models.Data;
using Peaker.TimeManagment.Models.Filters;
using System.IO;
using System.Security.Principal;

namespace Peaker.TimeManagment.Models.File
{
    public interface IFileExport
    {
        MemoryStream GetExportFile(EntryFilter filter, IPrincipal user, ITimeEntryAccess timeEntryAccess);

        MemoryStream GetExportFileForPayroll(EntryFilter filter, IPrincipal user, ITimeEntryAccess timeEntryAccess);

        MemoryStream GetExportFileForReview(EntryFilter filter, IPrincipal user, ITimeEntryAccess timeEntryAccess);
    }
}