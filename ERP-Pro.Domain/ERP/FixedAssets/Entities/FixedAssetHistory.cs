using ERP_Pro.Domain.Common.Entities;
using System;

namespace ERP_Pro.Domain.FixedAssets.Entities
{
    public class FixedAssetHistory : Entity<int>
    {
        public int FixedAssetId { get; set; }
        public DateTime Date { get; set; }
        public string Action { get; set; } // Transfer/Repair/Disposal/etc.
        public string Description { get; set; }
        public int? RelatedDocumentId { get; set; }
        public string RelatedDocumentType { get; set; }
    }
}