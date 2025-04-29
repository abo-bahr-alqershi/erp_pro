using System;

namespace ERP_Pro.Accounting.Domain.OpenBalance
{
    /// <summary>
    /// يمثل رصيد افتتاحي للحساب (OPEN_BAL)
    /// </summary>
    public class OpenBalance
    {
        public string AccountCode { get; private set; } // رمز الحساب
        public string? AccountDtlCode { get; private set; } // رمز التفاصيل للحساب
        public string? AccountDtlSub { get; private set; } // رمز التفاصيل الفرعية
        public int? AccountDtlType { get; private set; } // نوع التفاصيل للحساب
        public string CurrencyCode { get; private set; } // رمز العملة
        public string? CostCenterCode { get; private set; } // كود مركز التكلفة
        public string? FromCostCenterCode { get; private set; } // مركز التكلفة المحول منه
        public string? LCNo { get; private set; } // رقم الاعتماد المستندي
        public string? ProjectNo { get; private set; } // رقم المشروع
        public string? ActivityNo { get; private set; } // رقم النشاط
        public string? ReportCode { get; private set; } // كود التقرير
        public decimal? Amount { get; private set; } // المبلغ
        public decimal? AmountForeign { get; private set; } // المبلغ بالعملة الأجنبية
        public decimal? AccountRate { get; private set; } // سعر الصرف
        public int? Verify { get; private set; } // علم التحقق
        public int? OB_PY { get; private set; } // علم الرصيد الافتتاحي للسنة السابقة
        public long? CollectorNo { get; private set; } // رقم المحصل
        public long DocSequence { get; private set; } // تسلسل المستند
        public int? ExternalPost { get; private set; } // علم الترحيل الخارجي
        public int? FBranchNo { get; private set; } // رقم الفرع المحول منه
        public DateTime? ValueDate { get; private set; } // تاريخ القيمة
        public int? AddedByUserId { get; private set; } // رقم المستخدم الذي أضاف السطر
        public DateTime? AddedDate { get; private set; } // تاريخ الإضافة
        public int? UpdatedByUserId { get; private set; } // رقم المستخدم الذي عدل السطر
        public DateTime? UpdatedDate { get; private set; } // تاريخ آخر تعديل
        public int CompanyNo { get; private set; } // رقم الشركة
        public int BranchNo { get; private set; } // رقم الفرع
        public int? BranchYear { get; private set; } // السنة المالية للفرع
        public int? BranchUser { get; private set; } // مستخدم الفرع
        public long? UpdateCount { get; private set; } // عدد مرات التعديل
        public long? ReportPriority { get; private set; } // أولوية التقرير
        public string? AddedTerminal { get; private set; } // اسم الجهاز عند الإضافة
        public string? UpdatedTerminal { get; private set; } // اسم الجهاز عند التعديل
        public string? RefNo { get; private set; } // رقم مرجعي إضافي
        public string? AccountDesc { get; private set; } // وصف أو ملاحظات للحساب

        // العلاقات (Navigation Properties) - تضاف لاحقًا حسب ملف العلاقات

        // منشئ الكيان
        public OpenBalance(
            string accountCode,
            string currencyCode,
            long docSequence,
            int companyNo,
            int branchNo
            // باقي الحقول اختيارية
        )
        {
            AccountCode = accountCode;
            CurrencyCode = currencyCode;
            DocSequence = docSequence;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            // باقي الحقول تُضبط عبر دوال أو كونستركتور موسع حسب الحاجة
        }

        // ...دوال حماية/تعديل حسب الحاجة...
    }
}
