using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث عند إنشاء ربط جديد بين حساب وعملة
    /// </summary>
    public class AccountCurrencyCreatedDomainEvent : DomainEventBase
    {
        public AccountCurrencyId AccountCurrencyId { get; }
        public AccountCurrencyCreatedDomainEvent(AccountCurrencyId accountCurrencyId)
        {
            AccountCurrencyId = accountCurrencyId;
        }
    }
}