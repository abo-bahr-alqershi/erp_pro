using System;
using ERP.Domain.Common;

namespace ERP.Domain.Accounting.ValueObjects
{
    /// <summary>
    /// معرف مركب لرأس القيد المحاسبي: يتكوّن من (JVType, JDocNo)
    /// Composite identifier for MasterJournal (JVType, JDocNo)
    /// </summary>
    public class MasterJournalId : ValueObject
    {
        public int JVType { get; }
        public long JDocNo { get; }

        public MasterJournalId(int jvType, long jDocNo)
        {
            if (jvType <= 0)
                throw new ArgumentException("JVType يجب أن يكون رقمًا موجبًا.");
            if (jDocNo <= 0)
                throw new ArgumentException("JDocNo يجب أن يكون رقمًا موجبًا.");

            JVType = jvType;
            JDocNo = jDocNo;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return JVType;
            yield return JDocNo;
        }

        public override string ToString()
            => $"{JVType}-{JDocNo}";
    }
}