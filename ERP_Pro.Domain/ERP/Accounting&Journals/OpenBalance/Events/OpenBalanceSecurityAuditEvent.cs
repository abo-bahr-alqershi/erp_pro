using ERP_Pro.Domain.Common.Events;

namespace ERP_Pro.Accounting.Domain.OpenBalance.Events
{
    public class OpenBalanceSecurityAuditEvent : DomainEventBase
    {
        public long DocSequence { get; }
        public string Action { get; }
        public int UserId { get; }
        public OpenBalanceSecurityAuditEvent(long docSequence, string action, int userId)
        {
            DocSequence = docSequence;
            Action = action;
            UserId = userId;
        }
    }
}
