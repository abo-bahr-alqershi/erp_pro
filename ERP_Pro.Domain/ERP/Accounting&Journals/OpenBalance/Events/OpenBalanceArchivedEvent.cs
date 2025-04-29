using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    ///  يُطلق عند أرشفة رصيد مفتوح.
    /// </summary>
    public class OpenBalanceArchivedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int ArchivedBy { get; }
        public OpenBalanceArchivedEvent(long docSequence, int archivedBy)
        {
            DocSequence = docSequence;
            ArchivedBy = archivedBy;
        }
    }
}
