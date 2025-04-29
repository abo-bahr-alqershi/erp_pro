using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory
{
    /// <summary>
    /// يمثل سعر الصنف بكامل تفاصيله وعلاقاته.
    /// </summary>
    public class ItemPrice : AggregateRoot<ItemPriceId>
    {
        public int LevelNo { get; private set; } // علاقة مع PricingLevel
        public string ItemCode { get; private set; } // علاقة مع Item
        public string ItemUnit { get; private set; } // علاقة مع Measurement
        public decimal? PackSize { get; private set; }
        public long? WarehouseCode { get; private set; } // علاقة مع Warehouse
        public decimal? FromQty { get; private set; }
        public decimal? ToQty { get; private set; }
        public decimal ItemPriceValue { get; private set; }
        public bool? ImportXLS { get; private set; }
        public int? AddedByUserId { get; private set; } // علاقة مع User
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; } // علاقة مع User
        public DateTime? UpdatedDate { get; private set; }
        public int BranchNo { get; private set; } // علاقة مع Branch
        public long? UpdateCount { get; private set; }
        public int? ReportPriority { get; private set; }
        public string? AddedTerminal { get; private set; }
        public string? UpdatedTerminal { get; private set; }
        public decimal? DoctorPrice { get; private set; }
        public decimal? MinItemPrice { get; private set; }
        public decimal? MaxItemPrice { get; private set; }
        public DateTime? ExpireDate { get; private set; }
        public string BatchNo { get; private set; } // علاقة مع ItemBatch

        // العلاقات (Navigation Properties)
        // public virtual PricingLevel? PricingLevel { get; private set; }
        // public virtual Item? Item { get; private set; }
        // public virtual Measurement? Measurement { get; private set; }
        // public virtual Warehouse? Warehouse { get; private set; }
        // public virtual ItemBatch? ItemBatch { get; private set; }
        // public virtual User? AddedByUser { get; private set; }
        // public virtual User? UpdatedByUser { get; private set; }
        // public virtual Branch? Branch { get; private set; }

        private ItemPrice() : base(default!) { }

        public ItemPrice(
            ItemPriceId id,
            int levelNo,
            string itemCode,
            string itemUnit,
            decimal itemPriceValue,
            int branchNo,
            string batchNo)
            : base(id)
        {
            LevelNo = levelNo;
            ItemCode = itemCode;
            ItemUnit = itemUnit;
            ItemPriceValue = itemPriceValue;
            BranchNo = branchNo;
            BatchNo = batchNo;
        }
    }
}