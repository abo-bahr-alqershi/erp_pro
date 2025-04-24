using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.POS.Entities
{
    public class POSEndOfDay : Entity<int>
    {
        public int POSRegisterId { get; set; }
        public DateTime EndOfDayDate { get; set; }
        public decimal TotalSales { get; set; }
        public decimal TotalCash { get; set; }
        public decimal TotalCard { get; set; }
        public decimal TotalOther { get; set; }
        public string Notes { get; set; }
    }
}