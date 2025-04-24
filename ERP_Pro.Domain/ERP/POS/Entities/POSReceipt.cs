using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.POS.Entities
{
    public class POSReceipt : Entity<int>
    {
        public int POSRegisterId { get; set; }
        public DateTime ReceiptDate { get; set; }
        public string ReceiptNumber { get; set; }
        public int CashierId { get; set; }
        public decimal TotalAmount { get; set; }
        public decimal Discount { get; set; }
        public decimal Tax { get; set; }
        public decimal NetAmount { get; set; }
        public POSPaymentType PaymentType { get; set; }
        public POSReceiptStatus Status { get; set; }
        public ICollection<POSReceiptLine> Lines { get; set; }
    }
}