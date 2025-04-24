using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.POS.Entities
{
    public class POSReceiptLine : Entity<int>
    {
        public int POSReceiptId { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Quantity { get; set; }
        public decimal UnitPrice { get; set; }
        public decimal Discount { get; set; }
        public decimal Tax { get; set; }
        public decimal Total { get; set; }
    }
}