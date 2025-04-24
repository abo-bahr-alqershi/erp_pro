using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.CRM.Entities
{
    public class OpportunityActivity : Entity<int>
    {
        public int OpportunityId { get; set; }
        public CRMActivityType ActivityType { get; set; }
        public DateTime ActivityDate { get; set; }
        public string Description { get; set; }
    }
}