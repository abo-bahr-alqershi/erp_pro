using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    /// <summary>
    ///   يُطلق عند اعتماد رصيد مفتوح.
    /// </summary>
    /// <remarks>
    ///  يُستخدم هذا الحدث للإشارة إلى أن الرصيد المفتوح قد تم اعتماده بنجاح.
    /// </remarks>
    public class OpenBalanceApprovedEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public int ApprovedBy { get; }
        public OpenBalanceApprovedEvent(long docSequence, int approvedBy)
        {
            DocSequence = docSequence;
            ApprovedBy = approvedBy;
        }
    }
}
