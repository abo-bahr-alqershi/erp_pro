// استثناءات الدومين الخاصة بباركود الصنف
using System;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Exceptions
{
    /// <summary>
    /// يُرمى عند محاولة الوصول إلى باركود صنف غير موجود.
    /// </summary>
    public class ItemBarcodeNotFoundException : Exception
    {
        public ItemBarcodeNotFoundException(ItemBarcodeId id)
            : base($"باركود الصنف غير موجود: Id={id}")
        {
        }
    }

    /// <summary>
    /// يُرمى عند وجود حالة غير صحيحة أو منطق غير مقبول لباركود الصنف.
    /// </summary>
    public class InvalidItemBarcodeStateException : Exception
    {
        public InvalidItemBarcodeStateException(string message) : base(message) { }
    }
}
