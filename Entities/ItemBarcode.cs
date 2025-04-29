using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Domain.Inventory.Events;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory
{
    /// <summary>
    /// يمثل باركود وحدة صنف محدد بكامل تفاصيله.
    /// </summary>
    public class ItemBarcode : AggregateRoot<ItemBarcodeId>
    {
        public string ItemCode { get; private set; }
        public string ItemUnit { get; private set; }
        public decimal PackSize { get; private set; }
        public BarcodeNumber? Barcode { get; private set; }
        public string? BatchNo { get; private set; }
        public DateTime? ExpireDate { get; private set; }
        public bool? NoSale { get; private set; }
        public bool? NoPrint { get; private set; }
        public int? FlexNo { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }
        public int? ReportPriority { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }
        public bool? DealWithPurchaseFlag { get; private set; }
        public string? BarcodeLDesc { get; private set; }
        public string? BarcodeFDesc { get; private set; }
        public bool? MainBarcode { get; private set; }

        // العلاقات (Navigation Properties)
        // public virtual Item.Item? Item { get; private set; }
        // public virtual ItemBatch.ItemBatch? ItemBatch { get; private set; }
        // public virtual User? AddedByUser { get; private set; }
        // public virtual User? UpdatedByUser { get; private set; }

        private ItemBarcode() : base(default!) { }

        public ItemBarcode(ItemBarcodeId id, string itemCode, string itemUnit, decimal packSize)
            : base(id)
        {
            ItemCode = itemCode;
            ItemUnit = itemUnit;
            PackSize = packSize;
        }

        // إضافة حدث إنشاء باركود
        public void AddCreatedEvent(DateTime? createdAt = null)
        {
            var evt = new ItemBarcodeCreatedEvent(Id, ItemCode, Barcode, createdAt);
            AddDomainEvent(evt);
        }

        // إضافة حدث تعديل باركود
        public void AddUpdatedEvent(DateTime? updatedAt = null)
        {
            var evt = new ItemBarcodeUpdatedEvent(Id, ItemCode, Barcode, updatedAt);
            AddDomainEvent(evt);
        }

        // إضافة حدث حذف باركود
        public void AddDeletedEvent(DateTime? deletedAt = null)
        {
            var evt = new ItemBarcodeDeletedEvent(Id, ItemCode, Barcode, deletedAt);
            AddDomainEvent(evt);
        }
    }
}