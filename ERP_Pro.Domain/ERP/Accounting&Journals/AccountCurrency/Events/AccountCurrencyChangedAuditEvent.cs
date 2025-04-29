using ERP_Pro.Domain.Common.Events;
using ERP_Pro.Domain.Accounting.ValueObjects;
using System;

namespace ERP_Pro.Domain.Accounting.Events
{
    /// <summary>
    /// حدث تدقيق عند أي عملية (إضافة/تعديل/حذف) على عملات الحساب
    /// مستوحى من التريجر: AUD_ACCOUNT_CURR_TGR
    /// </summary>
    public class AccountCurrencyChangedAuditEvent : DomainEventBase
    {
        public AccountCurrencyId AccountCurrencyId { get; }
        public AccountCode AccountCode { get; }
        public CurrencyCode CurrencyCode { get; }
        public string ChangeType { get; } // Insert, Update, Delete, Inactivate, Reactivate, Used
        public int? ChangedByUserId { get; }
        public DateTime ChangeDate { get; }
        public string? OldValues { get; }
        public string? NewValues { get; }

        public AccountCurrencyChangedAuditEvent(
            AccountCurrencyId id,
            AccountCode accountCode,
            CurrencyCode currencyCode,
            string changeType,
            int? changedByUserId,
            DateTime changeDate,
            string? oldValues = null,
            string? newValues = null
        )
        {
            AccountCurrencyId = id;
            AccountCode = accountCode;
            CurrencyCode = currencyCode;
            ChangeType = changeType;
            ChangedByUserId = changedByUserId;
            ChangeDate = changeDate;
            OldValues = oldValues;
            NewValues = newValues;
        }
    }
}