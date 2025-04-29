using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Inventory.Domain.ItemBatch.ValueObjects;
using ERP_Pro.Inventory.Domain.ItemBatch.Enums;
using ERP_Pro.Inventory.Domain.ItemBatch.Events;
using ERP_Pro.Inventory.Domain.ItemBatch.Exceptions;

namespace ERP_Pro.Inventory.Domain.ItemBatch.Entities
{
    /// <summary>
    /// يمثل دفعة/تشغيلة الصنف (IAS_ITM_BATCH)
    /// </summary>
    public class ItemBatch : AggregateRoot<ItemBatchId>
    {
        public string ItemCode { get; private set; } // كود الصنف
        public int? ColNo1 { get; private set; } // رقم العمود الأول التصنيفي
        public string? BatchDescNo1 { get; private set; } // وصف تشغيلي/دفعة فرعية 1
        public int? ColNo2 { get; private set; }
        public string? BatchDescNo2 { get; private set; }
        public int? ColNo3 { get; private set; }
        public string? BatchDescNo3 { get; private set; }
        public int? ColNo4 { get; private set; }
        public string? BatchDescNo4 { get; private set; }
        public int? ColNo5 { get; private set; }
        public string? BatchDescNo5 { get; private set; }
        public string? BatchNo { get; private set; } // رقم الدفعة/التشغيلة الرئيسي
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public int CompanyNo { get; private set; }
        public int BranchNo { get; private set; }
        public int? BranchYear { get; private set; }
        public int? BranchUser { get; private set; }
        public long? ReportPriority { get; private set; }
        public long? UpdateCount { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }

        // العلاقات (Navigation Properties)
        public virtual Item Item { get; private set; } // علاقة مع الصنف
        public virtual Company Company { get; private set; } // علاقة مع الشركة
        public virtual Branch Branch { get; private set; } // علاقة مع الفرع

        // الأحداث الدومينية (مثال)
        public void RaiseCreated(int userId)
            => AddDomainEvent(new ItemBatchCreatedEvent(Id, userId));
        public void RaiseUpdated(int userId)
            => AddDomainEvent(new ItemBatchUpdatedEvent(Id, userId));
        public void RaiseDeleted(int userId)
            => AddDomainEvent(new ItemBatchDeletedEvent(Id, userId));
        public void RaiseActivated(int userId)
            => AddDomainEvent(new ItemBatchActivatedEvent(Id, userId));
        public void RaiseDeactivated(int userId)
            => AddDomainEvent(new ItemBatchDeactivatedEvent(Id, userId));
        public void RaiseError(string error, int? userId = null)
            => AddDomainEvent(new ItemBatchErrorEvent(Id, error, userId));

        // منشئ الكيان
        public ItemBatch(
            string itemCode,
            int companyNo,
            int branchNo,
            string? batchNo = null
            // باقي الحقول اختيارية
        ) : base(new ItemBatchId(itemCode, batchNo, companyNo, branchNo))
        {
            ItemCode = itemCode;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            BatchNo = batchNo;
        }

        // ...دوال حماية/تعديل حسب الحاجة...
    }
}
