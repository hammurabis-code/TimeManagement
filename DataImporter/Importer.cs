using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Peaker.TimeManagment.Data;
using System.IO;
using Microsoft.VisualBasic.FileIO;
using Peaker.TimeManagment.Models.View;
using Peaker.TimeManagment;

namespace DataImporter
{
    class Importer : DataAccess
    {
        private const string ImportPath = @"C:\Users\bgillmore\Documents\Clients\Peaker\";
        private const string ImportFileName = "peakerTestData2.csv";

        public List<TimeEntryView> ImportCsv()
        {
            List<TimeEntryView> returnEntries = new List<TimeEntryView>();
            List<string> rowErrors = new List<string>();
            string userName = string.Empty;
            string baseCode = string.Empty;
            int index = 1;
            using (TextFieldParser parser = new TextFieldParser(ImportPath + ImportFileName))
            {
                parser.TextFieldType = FieldType.Delimited;
                parser.SetDelimiters(",");
                while (!parser.EndOfData)
                {
                    TimeEntryView view = new TimeEntryView();
                    //Processing row
                    string[] fields = parser.ReadFields();
                    if (fields[0].ToLower() == "username")
                    {
                        index++;
                        continue; //Header
                    }
                    userName = fields[0];
                    try
                    {
                        view.entryDate = DateTime.Parse(fields[1]);
                    }
                    catch
                    {
                        rowErrors.Add($"Unable to parse date for row {index}, row skipped.");
                        index++;
                        continue;
                    }
                    baseCode = fields[2].Split('-')[0].Trim();
                    view.jobnumber = fields[3];
                    if (view.jobnumber != string.Empty) {
                        if (view.jobnumber.Length != 5)
                        {
                            rowErrors.Add($"Jobnumber not 5 characters for row {index}, row skipped.");
                            index++;
                            continue;
                        }
                    }
                    try
                    {
                        view.userHours = decimal.Parse(fields[4]);
                    }
                    catch
                    {
                        rowErrors.Add($"Unable to parse hours for row {index}, row skipped.");
                        index++;
                        continue;
                    }
                    view.comments = fields[5];
                    try
                    {
                        view.userDetailId = RetrieveSingleConvertible<int>("getuserdetailidfromusername", GetSingleParameter("p_usernamne", userName));
                    }
                    catch (ArgumentOutOfRangeException ex)
                    {
                        rowErrors.Add($"Unable to determine userdetail id for username {userName} at row {index}, row skipped.");
                        index++;
                        continue;
                    }
                    try
                    {
                        view.workCodeId = RetrieveSingleConvertible<int>("getworkcodeidfrombasecode", GetSingleParameter("p_basecode", baseCode));

                    }
                    catch (ArgumentOutOfRangeException ex)
                    {
                        rowErrors.Add($"Unable to determine workcode id for basecode {baseCode} at row {index}, row skipped.");
                        index++;
                        continue;
                    }
                    returnEntries.Add(view);
                    index++;

                }
            }

            foreach (string error in rowErrors)
            {
                Console.WriteLine(error);
            }
            return returnEntries;
        }

        public void InsertEntries(List<TimeEntryView> entries) {
            var count = 0;            
            var access = new TimeEntryAccess();
            foreach (var entry in entries)
            {
                access.AddUpdateEntry(entry, entry.userDetailId.ToString());
                count++;
                
            }
        }

    }
}
