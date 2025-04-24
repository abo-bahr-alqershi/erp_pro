using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Reports.Entities
{
    public class ReportParameter : Entity<int>
    {
        public int ReportTemplateId { get; set; }
        public string ParameterName { get; set; }
        public ParameterType ParameterType { get; set; }
        public string DefaultValue { get; set; }
        public string Description { get; set; }
    }
}