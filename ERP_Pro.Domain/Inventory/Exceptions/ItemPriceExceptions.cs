using System;
using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Domain.Inventory.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة إضافة سعر صنف مكرر لنفس المستوى والوحدة والفرع والدفعة.
    /// </summary>
    public class DuplicateItemPriceException : DomainException
    {
        public DuplicateItemPriceException(string message) : base(message) { }
    }

    /// <summary>
    /// استثناء عند محاولة تعديل أو حذف سعر صنف غير موجود.
    /// </summary>
    public class ItemPriceNotFoundException : DomainException
    {
        public ItemPriceNotFoundException(string message) : base(message) { }
    }
}