// حدث إنشاء دفعة صنف جديد
using System;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// يُطلق عند إنشاء دفعة صنف جديد (ItemBatch).
    /// </summary>
    public class ItemBatchCreatedEvent
    {
        public string ItemCode { get; }
        public string? BatchNo { get; }
        public int CompanyNo { get; }
        public int BranchNo { get; }
        public DateTime? CreatedAt { get; }

        public ItemBatchCreatedEvent(string itemCode, string? batchNo, int companyNo, int branchNo, DateTime? createdAt)
        {
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            CreatedAt = createdAt;
        }
    }
}
