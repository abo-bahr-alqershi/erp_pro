using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.CRM.Entities
{
    public class Opportunity : AggregateRoot<int>
    {
        public string OpportunityCode { get; set; }
        public int LeadId { get; set; }
        public string Name { get; set; }
        public CRMOpportunityStage Stage { get; set; }
        public decimal Value { get; set; }
        public DateTime ExpectedCloseDate { get; set; }
        public CRMOpportunityStatus Status { get; set; }
        public string Notes { get; set; }
        public ICollection<OpportunityActivity> Activities { get; set; }
    }
}