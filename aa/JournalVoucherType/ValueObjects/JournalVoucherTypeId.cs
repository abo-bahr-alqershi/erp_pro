using Common.Domain.ValueObjects;

namespace Accounting.Domain.ValueObjects
{
    /// <summary>
    /// معرف نوع سند القيد المحاسبي (V_TYPE)
    /// </summary>
    public sealed class JournalVoucherTypeId : IdValueObject<int>
    {
        public JournalVoucherTypeId(int value) : base(value) { }
    }
}