using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataImporter
{
    class Program
    {
        static void Main(string[] args)
        {
            Importer importer = new Importer();
            var entries = importer.ImportCsv();
            importer.InsertEntries(entries);
            //foreach (var item in entries)
            //{
            //    Console.WriteLine($"Entry: {item.userDetailId}, {item.workCodeId}, {item.jobnumber}, {item.userHours}, {item.comments}");
            //}
        }
    }
}
