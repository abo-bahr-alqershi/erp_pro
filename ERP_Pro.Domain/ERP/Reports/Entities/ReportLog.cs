using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Reports.Entities
{
    public class ReportLog : Entity<int>
    {
        public int ReportTemplateId { get; set; }
        public int UserId { get; set; }
        public DateTime ExecutionDate { get; set; }
        public string ParametersJson { get; set; }
        public string ResultStatus { get; set; }
        public string Notes { get; set; }
    }
}