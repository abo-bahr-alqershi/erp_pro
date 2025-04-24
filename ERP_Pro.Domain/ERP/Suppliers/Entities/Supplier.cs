using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Suppliers.Entities
{
    public class Supplier : AggregateRoot<int>
    {
        public string Code { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public int? GroupId { get; set; }
        public string CommercialRegNo { get; set; }
        public string TaxId { get; set; }
        public string NationalId { get; set; }
        public int? BranchId { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Website { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public bool IsActive { get; set; }
        public decimal? CreditLimit { get; set; }
        public int? CreditDays { get; set; }
        public decimal? OpeningBalance { get; set; }
        public string OpeningBalanceType { get; set; }
        public DateTime? OpeningBalanceDate { get; set; }
        public string Note { get; set; }
        public ICollection<SupplierContact> Contacts { get; set; }
        public ICollection<SupplierAttachment> Attachments { get; set; }
    }
}