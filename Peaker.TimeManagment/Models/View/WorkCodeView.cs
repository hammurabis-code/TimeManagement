namespace Peaker.TimeManagment.Models.View
{
    public class WorkCodeView
    {        
        public int WorkCodeId { get; set; }
        public string baseCode { get; set; }
        public string description { get; set; }
        public string area { get; set; }
        public string sub { get; set; }
        public bool IsJobNumberRequired { get; set; }
        public bool IsSelected { get; set; }
    }
}