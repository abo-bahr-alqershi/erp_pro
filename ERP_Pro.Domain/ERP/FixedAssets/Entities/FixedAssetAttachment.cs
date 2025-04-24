using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.FixedAssets.Entities
{
    public class FixedAssetAttachment : Entity<int>
    {
        public int FixedAssetId { get; set; }
        public string FileName { get; set; }
        public string FileUrl { get; set; }
    }
}