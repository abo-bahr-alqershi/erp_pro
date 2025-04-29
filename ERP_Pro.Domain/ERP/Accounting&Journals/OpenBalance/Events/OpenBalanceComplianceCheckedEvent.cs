using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    /// يُطلق عند التحقق من التوافق لرصيد مفتوح.
    /// </summary>
    public class OpenBalanceComplianceCheckedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int CheckedBy { get; }
        public string? Details { get; }
        public OpenBalanceComplianceCheckedEvent(long docSequence, int checkedBy, string? details = null)
        {
            DocSequence = docSequence;
            CheckedBy = checkedBy;
            Details = details;
        }
    }
}
