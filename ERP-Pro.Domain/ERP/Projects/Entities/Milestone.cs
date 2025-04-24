using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Projects.Entities
{
    public class Milestone : Entity<int>
    {
        public int? ProjectId { get; set; }
        public int? ContractId { get; set; }
        public string MilestoneName { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public decimal? PlannedValue { get; set; }
        public decimal? ActualValue { get; set; }
        public MilestoneStatus Status { get; set; }
        public decimal? CompletionPct { get; set; }
        public string Notes { get; set; }
    }
}