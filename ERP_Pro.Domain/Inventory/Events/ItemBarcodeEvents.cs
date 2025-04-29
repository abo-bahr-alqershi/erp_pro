using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.Events
{
    /// <summary>
    /// يُطلق عند إنشاء باركود صنف جديد (ItemBarcode).
    /// </summary>
    public class ItemBarcodeCreatedEvent
    {
        public ItemBarcodeId ItemBarcodeId { get; }
        public string ItemCode { get; }
        public BarcodeNumber? Barcode { get; }
        public DateTime? CreatedAt { get; }

        public ItemBarcodeCreatedEvent(ItemBarcodeId itemBarcodeId, string itemCode, BarcodeNumber? barcode, DateTime? createdAt)
        {
            ItemBarcodeId = itemBarcodeId;
            ItemCode = itemCode;
            Barcode = barcode;
            CreatedAt = createdAt;
        }
    }

    /// <summary>
    /// يُطلق عند تعديل بيانات باركود صنف (ItemBarcode).
    /// </summary>
    public class ItemBarcodeUpdatedEvent
    {
        public ItemBarcodeId ItemBarcodeId { get; }
        public string ItemCode { get; }
        public BarcodeNumber? Barcode { get; }
        public DateTime? UpdatedAt { get; }

        public ItemBarcodeUpdatedEvent(ItemBarcodeId itemBarcodeId, string itemCode, BarcodeNumber? barcode, DateTime? updatedAt)
        {
            ItemBarcodeId = itemBarcodeId;
            ItemCode = itemCode;
            Barcode = barcode;
            UpdatedAt = updatedAt;
        }
    }

    /// <summary>
    /// يُطلق عند حذف باركود صنف (ItemBarcode).
    /// </summary>
    public class ItemBarcodeDeletedEvent
    {
        public ItemBarcodeId ItemBarcodeId { get; }
        public string ItemCode { get; }
        public BarcodeNumber? Barcode { get; }
        public DateTime? DeletedAt { get; }

        public ItemBarcodeDeletedEvent(ItemBarcodeId itemBarcodeId, string itemCode, BarcodeNumber? barcode, DateTime? deletedAt)
        {
            ItemBarcodeId = itemBarcodeId;
            ItemCode = itemCode;
            Barcode = barcode;
            DeletedAt = deletedAt;
        }
    }
}