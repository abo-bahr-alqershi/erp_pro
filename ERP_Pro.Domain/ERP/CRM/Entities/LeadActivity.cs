using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.CRM.Entities
{
    public class LeadActivity : Entity<int>
    {
        public int LeadId { get; set; }
        public CRMActivityType ActivityType { get; set; }
        public DateTime ActivityDate { get; set; }
        public string Description { get; set; }
    }
}