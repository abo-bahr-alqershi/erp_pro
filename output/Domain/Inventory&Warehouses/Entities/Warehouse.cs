public class Warehouse
{
    public long? WCode { get; private set; }
    public string WName { get; private set; }
    public string? WEName { get; private set; }
    public string? Location { get; private set; }
    public string? TelNo { get; private set; }
    public bool? Inactive { get; private set; }
    public string? WhKeeper { get; private set; }
    public long? WhgCode { get; private set; }
    public bool? WType { get; private set; }
    public bool? UseBoe { get; private set; }
    public bool? NoSale { get; private set; }
    public bool? ChkAvlQty { get; private set; }
    public string? TrACode { get; private set; }
    public string? CcCode { get; private set; }
    public short? CntryNo { get; private set; }
    public string? Gps { get; private set; }
    public long? ProvNo { get; private set; }
    public long? CityNo { get; private set; }
    public long? RCode { get; private set; }
    public int? WSer { get; private set; }
    public int? ConnBrnNo { get; private set; }
    public int? ActivityNo { get; private set; }
    public int? MainWcode { get; private set; }
    public string? DbLinkName { get; private set; }
    public bool? UseAutoRecWhtrns { get; private set; }
    public short? PriceLvl { get; private set; }
    public bool? SrvcFlg { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public string? Latitude { get; private set; }
    public string? Longitude { get; private set; }
    public string? GlnCode { get; private set; }
    public string? WLAddrs { get; private set; }
    public string? WFAddrs { get; private set; }
    public bool? ShoWcTyp { get; private set; }
    public string? PjNo { get; private set; }
    public string? ActvNo { get; private set; }
    public string? SoDsc { get; private set; }
    public int? SoType { get; private set; }
    public short? ScNo { get; private set; }
    public long? BankNo { get; private set; }
    public string? RepCode { get; private set; }
    public long? ColNo { get; private set; }
    public string? CCode { get; private set; }
    public int? ClcTypNoTax { get; private set; }
    public long? CGroupCode { get; private set; }
    public short? ShoSysTyp { get; private set; }
    public bool? UsePrprtnFlg { get; private set; }
    public bool? UseBinMov { get; private set; }
    public long? WhCstLmt { get; private set; }
    public bool? ForDmgdItm { get; private set; }
    public Account Account { get; private set; } // Navigation
    public Region Region { get; private set; } // Navigation
    public City City { get; private set; } // Navigation
    public Country Country { get; private set; } // Navigation
    public ICollection<InventoryBinDetail> InventoryBinDetails { get; private set; } // Inverse Navigation
    public ICollection<CreditCardType> CreditCardTypes { get; private set; } // Inverse Navigation
    public ICollection<SalesInvoiceDetail> SalesInvoiceDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesInvoice> SalesInvoices { get; private set; } // Inverse Navigation
    public ICollection<ItemPrice> ItemPrices { get; private set; } // Inverse Navigation
    public ICollection<PurchaseInvoiceDetail> PurchaseInvoiceDetails { get; private set; } // Inverse Navigation
    public ICollection<PurchaseInvoice> PurchaseInvoices { get; private set; } // Inverse Navigation
    public ICollection<SalesReturnDetail> SalesReturnDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesReturn> SalesReturns { get; private set; } // Inverse Navigation
    public ICollection<PurchaseReturnDetail> PurchaseReturnDetails { get; private set; } // Inverse Navigation
    public ICollection<PurchaseReturn> PurchaseReturns { get; private set; } // Inverse Navigation
    public ICollection<ItemMovement> ItemMovements { get; private set; } // Inverse Navigation
    public ICollection<PrivilegeWarehouse> PrivilegeWarehouses { get; private set; } // Inverse Navigation
    public ICollection<PurchaseOrderDetail> PurchaseOrderDetails { get; private set; } // Inverse Navigation
    public ICollection<SalesDiscount> SalesDiscounts { get; private set; } // Inverse Navigation
    public ICollection<SalesFreeQty> SalesFreeQties { get; private set; } // Inverse Navigation
}