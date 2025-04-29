using ERP_Pro.Domain.Common.Primitives;

namespace ERP_Pro.Accounting.Domain.MasterJournalBranch
{
    public sealed class MasterJournalBranchId : ValueObject
    {
        public int JVType { get; }
        public long JDocNo { get; }

        public MasterJournalBranchId(int jvType, long jDocNo)
        {
            JVType = jvType;
            JDocNo = jDocNo;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return JVType;
            yield return JDocNo;
        }
    }
}
