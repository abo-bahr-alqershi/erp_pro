using ERP_Pro.Domain.Common.Entities;

namespace ERP_Pro.Domain.FixedAssets.Entities
{
    public class FixedAssetCategory : Entity<int>
    {
        public string CategoryName { get; set; }
        public int? ParentCategoryId { get; set; }
        public FixedAssetCategory ParentCategory { get; set; }
    }
}