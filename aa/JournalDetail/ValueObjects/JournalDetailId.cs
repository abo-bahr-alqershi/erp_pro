using Domain.Common;
using System;

namespace Accounting.Domain.Journals
{
    /// <summary>
    /// معرف مركب لتفاصيل القيد اليومي (JVType, JDocNo, JSerial)
    /// </summary>
    public class JournalDetailId : ValueObject
    {
        /// <summary>رقم نوع القيد المحاسبي</summary>
        public int JVType { get; }
        /// <summary>رقم المستند المحاسبي</summary>
        public long JDocNo { get; }
        /// <summary>الرقم التسلسلي للسطر</summary>
        public decimal? JSerial { get; }

        public JournalDetailId(int jvType, long jDocNo, decimal? jSerial)
        {
            JVType = jvType;
            JDocNo = jDocNo;
            JSerial = jSerial;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return JVType;
            yield return JDocNo;
            yield return JSerial;
        }
    }
}