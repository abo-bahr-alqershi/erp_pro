using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.CRM.Entities
{
    public class Lead : AggregateRoot<int>
    {
        public string LeadCode { get; set; }
        public string Name { get; set; }
        public string Source { get; set; }
        public CRMLeadStatus Status { get; set; }
        public string AssignedTo { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Company { get; set; }
        public string Notes { get; set; }
        public DateTime CreatedDate { get; set; }
        public ICollection<LeadActivity> Activities { get; set; }
        public ICollection<Opportunity> Opportunities { get; set; }
    }
}