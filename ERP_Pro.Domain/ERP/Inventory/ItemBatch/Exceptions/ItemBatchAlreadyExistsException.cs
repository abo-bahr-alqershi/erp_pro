using System;

namespace ERP_Pro.Inventory.Domain.ItemBatch.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة إضافة دفعة صنف مكررة.
    /// </summary>
    public class ItemBatchAlreadyExistsException : Exception
    {
        public ItemBatchAlreadyExistsException(string? message = null)
            : base(message ?? "Item batch already exists for this item and batch number.") { }
    }
}
