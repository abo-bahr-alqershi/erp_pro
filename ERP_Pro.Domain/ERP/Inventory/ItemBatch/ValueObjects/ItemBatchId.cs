using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Inventory.Domain.ItemBatch.ValueObjects
{
    /// <summary>
    /// معرف مركب فريد لتشغيلة الصنف (ItemBatch)
    /// </summary>
    public sealed class ItemBatchId : ValueObject
    {
        public string ItemCode { get; }
        public string? BatchNo { get; }
        public int CompanyNo { get; }
        public int BranchNo { get; }

        public ItemBatchId(string itemCode, string? batchNo, int companyNo, int branchNo)
        {
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return ItemCode;
            yield return BatchNo ?? "";
            yield return CompanyNo;
            yield return BranchNo;
        }
    }
}
