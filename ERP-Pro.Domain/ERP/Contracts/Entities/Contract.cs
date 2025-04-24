using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Contracts.Entities
{
    public class Contract : AggregateRoot<int>
    {
        public string ContractCode { get; set; }
        public ContractType ContractType { get; set; }
        public string Subject { get; set; }
        public int? CustomerId { get; set; }
        public int? SupplierId { get; set; }
        public int? ProjectId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public decimal? TotalValue { get; set; }
        public int? CurrencyId { get; set; }
        public ContractStatus Status { get; set; }
        public DateTime? SignedDate { get; set; }
        public int? AttachmentId { get; set; }
        public string Notes { get; set; }
        public ICollection<ContractAmendment> Amendments { get; set; }
        public ICollection<Milestone> Milestones { get; set; }
    }
}