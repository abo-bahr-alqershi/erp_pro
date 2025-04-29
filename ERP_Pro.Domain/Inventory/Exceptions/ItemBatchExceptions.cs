// استثناء: دفعة الصنف غير موجودة
using System;

namespace ERP_Pro.Domain.Inventory.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة الوصول إلى دفعة صنف غير موجودة.
    /// </summary>
    public class ItemBatchNotFoundException : Exception
    {
        public ItemBatchNotFoundException(string itemCode, string? batchNo)
            : base($"دفعة الصنف غير موجودة: ItemCode={itemCode}, BatchNo={batchNo}")
        {
        }
    }

    /// <summary>
    /// يُرمى عند وجود حالة غير صحيحة أو منطق غير مقبول لدفعة الصنف.
    /// </summary>
    public class InvalidItemBatchStateException : Exception
    {
        public InvalidItemBatchStateException(string message) : base(message) { }
    }
}
