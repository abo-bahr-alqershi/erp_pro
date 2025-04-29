using System;

namespace ERP_Pro.Domain.Inventory.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة إضافة مستوى تسعير موجود مسبقًا
    /// </summary>
    public class PricingLevelAlreadyExistsException : Exception
    {
        public PricingLevelAlreadyExistsException(string levelName)
            : base($"مستوى التسعير '{levelName}' موجود مسبقًا.")
        {
        }
    }

    /// <summary>
    /// استثناء عند محاولة حذف مستوى تسعير مرتبط بحركات أو أصناف
    /// </summary>
    public class PricingLevelHasDependenciesException : Exception
    {
        public PricingLevelHasDependenciesException(int levelNo)
            : base($"لا يمكن حذف مستوى التسعير رقم {levelNo} لارتباطه بحركات أو أصناف.")
        {
        }
    }

    /// <summary>
    /// استثناء عند محاولة إضافة حركة صنف مكررة
    /// </summary>
    public class ItemMovementDuplicateException : Exception
    {
        public ItemMovementDuplicateException(long docNo, string itemCode)
            : base($"حركة الصنف برقم المستند {docNo} وكود الصنف '{itemCode}' موجودة مسبقًا.")
        {
        }
    }

    /// <summary>
    /// استثناء عند محاولة حذف حركة صنف مرتبطة بتسويات أو مستندات أخرى
    /// </summary>
    public class ItemMovementHasDependenciesException : Exception
    {
        public ItemMovementHasDependenciesException(long docNo)
            : base($"لا يمكن حذف حركة الصنف رقم المستند {docNo} لارتباطها بتسويات أو مستندات أخرى.")
        {
        }
    }
}
