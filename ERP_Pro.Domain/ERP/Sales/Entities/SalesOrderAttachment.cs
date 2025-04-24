using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.Sales.Entities
{
    public class SalesOrderAttachment : Entity<int>
    {
        public int SalesOrderId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}