using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Projects.Entities
{
    public class ProjectTask : Entity<int>
    {
        public int ProjectId { get; set; }
        public string TaskCode { get; set; }
        public string TaskNameAr { get; set; }
        public string TaskNameEn { get; set; }
        public int? AssignedTo { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public decimal? PlannedHours { get; set; }
        public decimal? ActualHours { get; set; }
        public ProjectTaskStatus Status { get; set; }
        public int? ParentTaskId { get; set; }
        public TaskPriority Priority { get; set; }
        public decimal? Progress { get; set; }
        public string Notes { get; set; }
    }
}