using ERP_Pro.Domain.Common.Entities;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Reports.Entities
{
    public class ReportTemplate : AggregateRoot<int>
    {
        public string Name { get; set; }
        public ReportType ReportType { get; set; }
        public string TemplateContent { get; set; }
        public string Description { get; set; }
        public bool IsSystem { get; set; }
        public bool IsActive { get; set; }
        public ICollection<ReportParameter> Parameters { get; set; }
    }
}