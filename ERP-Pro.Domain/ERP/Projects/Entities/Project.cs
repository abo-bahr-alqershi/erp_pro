using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Projects.Entities
{
    public class Project : AggregateRoot<int>
    {
        public string ProjectCode { get; set; }
        public string ProjectNameAr { get; set; }
        public string ProjectNameEn { get; set; }
        public int? CustomerId { get; set; }
        public int? ManagerId { get; set; }
        public ProjectStatus Status { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public decimal? Budget { get; set; }
        public string Description { get; set; }
        public int? BranchId { get; set; }
        public int? ParentProjectId { get; set; }
        public int? CostCenterId { get; set; }
        public string Notes { get; set; }
        public ICollection<ProjectTask> Tasks { get; set; }
        public ICollection<Project> SubProjects { get; set; }
        public ICollection<Milestone> Milestones { get; set; }
    }
}