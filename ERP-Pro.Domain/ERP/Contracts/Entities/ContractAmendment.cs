using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.Contracts.Entities
{
    public class ContractAmendment : Entity<int>
    {
        public int ContractId { get; set; }
        public AmendmentType AmendmentType { get; set; }
        public string Description { get; set; }
        public decimal? ValueChange { get; set; }
        public DateTime? NewEndDate { get; set; }
        public DateTime? SignedDate { get; set; }
        public int? AttachmentId { get; set; }
        public string Notes { get; set; }
    }
}