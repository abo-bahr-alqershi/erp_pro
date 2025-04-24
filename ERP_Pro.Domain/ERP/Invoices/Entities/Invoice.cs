using ERP_Pro.Domain.Common.Entities;
using ERP_Pro.Domain.Invoices.Enums;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Invoices.Entities
{
    public class Invoice : AggregateRoot<int>
    {
        public string InvoiceNumber { get; set; }
        public InvoiceType Type { get; set; }
        public string Reference { get; set; }
        public DateTime InvoiceDate { get; set; }
        public DateTime? DueDate { get; set; }
        public int? CustomerId { get; set; }
        public int? SupplierId { get; set; }
        public int? BranchId { get; set; }
        public int? WarehouseId { get; set; }
        public string Currency { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal DiscountAmount { get; set; }
        public decimal TaxAmount { get; set; }
        public decimal NetAmount { get; set; }
        public InvoicePaymentStatus PaymentStatus { get; set; }
        public InvoiceStatus Status { get; set; }
        public string Notes { get; set; }
        public ICollection<InvoiceLine> Lines { get; set; }
        public ICollection<InvoiceTax> Taxes { get; set; }
        public ICollection<InvoiceAttachment> Attachments { get; set; }
    }
}