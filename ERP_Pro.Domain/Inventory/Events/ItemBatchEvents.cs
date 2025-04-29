// حدث إنشاء دفعة صنف جديد
using System;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// يُطلق عند إنشاء دفعة صنف جديد (ItemBatch).
    /// </summary>
    public class ItemBatchCreatedEvent
    {
        public ItemBatchId ItemBatchId { get; }
        public string ItemCode { get; }
        public BatchNumber BatchNo { get; }
        public int CompanyNo { get; }
        public int BranchNo { get; }
        public DateTime? CreatedAt { get; }

        public ItemBatchCreatedEvent(ItemBatchId itemBatchId, string itemCode, BatchNumber batchNo, int companyNo, int branchNo, DateTime? createdAt)
        {
            ItemBatchId = itemBatchId;
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            CreatedAt = createdAt;
        }
    }

    /// <summary>
    /// يُطلق عند تعديل بيانات دفعة صنف (ItemBatch).
    /// </summary>
    public class ItemBatchUpdatedEvent
    {
        public ItemBatchId ItemBatchId { get; }
        public string ItemCode { get; }
        public BatchNumber BatchNo { get; }
        public int CompanyNo { get; }
        public int BranchNo { get; }
        public DateTime? UpdatedAt { get; }

        public ItemBatchUpdatedEvent(ItemBatchId itemBatchId, string itemCode, BatchNumber batchNo, int companyNo, int branchNo, DateTime? updatedAt)
        {
            ItemBatchId = itemBatchId;
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            UpdatedAt = updatedAt;
        }
    }

    /// <summary>
    /// يُطلق عند حذف دفعة صنف (ItemBatch).
    /// </summary>
    public class ItemBatchDeletedEvent
    {
        public ItemBatchId ItemBatchId { get; }
        public string ItemCode { get; }
        public BatchNumber BatchNo { get; }
        public int CompanyNo { get; }
        public int BranchNo { get; }
        public DateTime? DeletedAt { get; }

        public ItemBatchDeletedEvent(ItemBatchId itemBatchId, string itemCode, BatchNumber batchNo, int companyNo, int branchNo, DateTime? deletedAt)
        {
            ItemBatchId = itemBatchId;
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            DeletedAt = deletedAt;
        }
    }
}
