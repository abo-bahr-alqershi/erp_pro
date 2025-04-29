// كيان دفعة الصنف (ItemBatch)
// يمثل دفعة أو تشغيلية لصنف محدد في المخزون
using System;
using ERP_Pro.Domain.Common;
using System.Collections.Generic;
using ERP_Pro.Domain.Inventory.Entities;
// using ERP_Pro.Domain.Inventory.Warehouse;
// using ERP_Pro.Domain.Inventory.Bin;
using ERP_Pro.Domain.Users;
using ERP_Pro.Domain.Companies;
using ERP_Pro.Domain.Branches;
using ERPPro.Domain.Common.Primitives;
using ERP_Pro.Domain.Inventory.ValueObjects;

namespace ERP_Pro.Domain.Inventory.ItemBatch
{
    /// <summary>
    /// يمثل دفعة صنف محدد (Batch) بكامل تفاصيلها التصنيفية.
    /// </summary>
    public class ItemBatch : AggregateRoot<ItemBatchId>
    {
        // كود الصنف المرتبط (علاقة مع Item)
        public string ItemCode { get; private set; }

        // رقم العمود التصنيفي الأول
        public int? ColNo1 { get; private set; }
        // وصف تشغيلي/دفعة فرعية 1
        public string? BatchDescNo1 { get; private set; }
        // رقم العمود التصنيفي الثاني
        public int? ColNo2 { get; private set; }
        // وصف تشغيلي/دفعة فرعية 2
        public string? BatchDescNo2 { get; private set; }
        // رقم العمود التصنيفي الثالث
        public int? ColNo3 { get; private set; }
        // وصف تشغيلي/دفعة فرعية 3
        public string? BatchDescNo3 { get; private set; }
        // رقم العمود التصنيفي الرابع
        public int? ColNo4 { get; private set; }
        // وصف تشغيلي/دفعة فرعية 4
        public string? BatchDescNo4 { get; private set; }
        // رقم العمود التصنيفي الخامس
        public int? ColNo5 { get; private set; }
        // وصف تشغيلي/دفعة فرعية 5
        public string? BatchDescNo5 { get; private set; }
        // رقم الدفعة/التشغيلة الرئيسي كـ ValueObject
        public BatchNumber BatchNo { get; private set; }
        // رقم المستخدم الذي أضاف السطر
        public int? AddedByUserId { get; private set; }
        // تاريخ الإضافة
        public DateTime? AddedDate { get; private set; }
        // رقم المستخدم الذي عدل السطر
        public int? UpdatedByUserId { get; private set; }
        // تاريخ آخر تعديل
        public DateTime? UpdatedDate { get; private set; }
        // رقم الشركة
        public int CompanyNo { get; private set; }
        // رقم الفرع
        public int BranchNo { get; private set; }
        // السنة المالية للفرع
        public int? BranchYear { get; private set; }
        // مستخدم الفرع
        public int? BranchUser { get; private set; }
        // أولوية التقرير
        public int? ReportPriority { get; private set; }
        // عدد مرات التعديل
        public long? UpdateCount { get; private set; }
        // اسم الجهاز عند الإضافة
        public string? AddedTerminal { get; private set; }
        // اسم الجهاز عند التعديل
        public string? UpdatedTerminal { get; private set; }
        // وحدة الصنف
        public string ItemUnit { get; private set; }
        // حجم العبوة
        public decimal? PackSize { get; private set; }
        // كود المستودع
        public int? WarehouseCode { get; private set; }
        // كود مكان التخزين (Bin)
        public int? BinCode { get; private set; }
        // تاريخ انتهاء الدفعة
        public DateTime? ExpiryDate { get; private set; }
        // الكمية
        public decimal? ItemQty { get; private set; }
        // أقل كمية
        public decimal? MinItemQty { get; private set; }
        // أكبر كمية
        public decimal? MaxItemQty { get; private set; }
        // عمر الصنف في المخزون
        public int? ItemAge { get; private set; }
        // نسبة الصنف
        public decimal? ItemRatio { get; private set; }
        // نسبة مبيعات الصنف
        public decimal? ItemSaleRatio { get; private set; }

        // العلاقات
        public virtual Item.Item? Item { get; private set; }
        public virtual Warehouse.Warehouse? Warehouse { get; private set; }
        public virtual Bin.Bin? Bin { get; private set; }
        public virtual User? AddedByUser { get; private set; }
        public virtual User? UpdatedByUser { get; private set; }
        public virtual Company? Company { get; private set; }
        public virtual Branch? Branch { get; private set; }


        // منشئ الكلاس (للاستخدام من ORM فقط)
        private ItemBatch() : base(default!) { }

        // منشئ مخصص للاستخدام في الدومين
        public ItemBatch(ItemBatchId id, string itemCode, BatchNumber batchNo, int companyNo, int branchNo)
            : base(id)
        {
            ItemCode = itemCode;
            BatchNo = batchNo;
            CompanyNo = companyNo;
            BranchNo = branchNo;
        }
    }
}
