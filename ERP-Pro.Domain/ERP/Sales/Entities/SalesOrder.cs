using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.Sales.Entities
{
    public class SalesOrder : AggregateRoot<int>
    {
        public string OrderNumber { get; set; }
        public DateTime Date { get; set; }
        public int CustomerId { get; set; }
        public int? BranchId { get; set; }
        public string SalesType { get; set; }
        public string Status { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal Discount { get; set; }
        public decimal Tax { get; set; }
        public decimal NetAmount { get; set; }
        public string Currency { get; set; }
        public string Notes { get; set; }
        public ICollection<SalesOrderLine> Lines { get; set; }
        public ICollection<SalesOrderAttachment> Attachments { get; set; }
    }
}