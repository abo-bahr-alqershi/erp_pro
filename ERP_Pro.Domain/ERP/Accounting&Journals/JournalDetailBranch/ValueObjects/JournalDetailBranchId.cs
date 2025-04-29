using System;
using System.Collections.Generic;
using Domain.Common;

namespace Accounting.Domain.Journals
{
    /// <summary>
    /// يمثل المعرف المركب لسطر تفاصيل القيد للفرع (JVType, JDocNo, JSerial, BranchNo)
    /// </summary>
    public class JournalDetailBranchId : ValueObject
    {
        /// <summary>رقم نوع القيد المحاسبي</summary>
        public int JVType { get; }
        /// <summary>رقم المستند المحاسبي</summary>
        public long JDocNo { get; }
        /// <summary>الرقم التسلسلي للسطر</summary>
        public decimal? JSerial { get; }
        /// <summary>رقم الفرع</summary>
        public int BranchNo { get; }

        public JournalDetailBranchId(int jvType, long jDocNo, decimal? jSerial, int branchNo)
        {
            JVType = jvType;
            JDocNo = jDocNo;
            JSerial = jSerial;
            BranchNo = branchNo;
        }

        /// <summary>
        /// المكونات التي يعتمد عليها التساوي في ValueObject (للمقارنة).
        /// </summary>
        /// <returns>تسلسل الحقول المركبة</returns>
        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return JVType;
            yield return JDocNo;
            yield return JSerial;
            yield return BranchNo;
        }

        public override string ToString()
            => $"{JVType}-{JDocNo}-{(JSerial?.ToString() ?? "0")}-{BranchNo}";
    }
}