using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Domain.Accounting.ValueObjects;
using ERP_Pro.Domain.Accounting.Entities;
using ERP_Pro.Domain.Accounting.Events;
using ERP_Pro.Domain.Accounting.Exceptions;
using ERP_Pro.Domain.Users.Entities;
using ERP_Pro.Domain.General.Entities;
using System;

namespace ERP_Pro.Domain.Accounting.Entities
{
    /// <summary>
    /// يمثل ربط الحساب بعملة معينة مع جميع تفاصيل العلاقة
    /// </summary>
    public class AccountCurrency : Entity<AccountCurrencyId>
    {
        // الحقول الرئيسية من الجدول
        public AccountCode AccountCode { get; private set; }
        public CurrencyCode CurrencyCode { get; private set; }
        public bool Inactive { get; private set; }
        public bool Used { get; private set; }
        public int? AddedByUserId { get; private set; }
        public DateTime? AddedDate { get; private set; }
        public int? UpdatedByUserId { get; private set; }
        public DateTime? UpdatedDate { get; private set; }
        public long? UpdateCount { get; private set; }

        // العلاقات (Navigations)
        public Account Account { get; private set; }
        public Currency Currency { get; private set; }
        public User AddedByUser { get; private set; }
        public User UpdatedByUser { get; private set; }

        // الدوال البنائية
        protected AccountCurrency() { }

        public AccountCurrency(AccountCurrencyId id, AccountCode accountCode, CurrencyCode currencyCode)
        {
            Id = id;
            AccountCode = accountCode;
            CurrencyCode = currencyCode;
            Inactive = false;
            Used = false;
            AddDomainEvent(new AccountCurrencyCreatedDomainEvent(id));
        }

        // دوال التعديل
        public void MarkInactive(int? userId)
        {
            Inactive = true;
            UpdatedByUserId = userId;
            UpdatedDate = DateTime.UtcNow;
            AddDomainEvent(new AccountCurrencyChangedAuditEvent(Id, AccountCode, CurrencyCode, "Inactivate", userId, UpdatedDate.Value));
        }

        public void MarkActive(int? userId)
        {
            Inactive = false;
            UpdatedByUserId = userId;
            UpdatedDate = DateTime.UtcNow;
            AddDomainEvent(new AccountCurrencyChangedAuditEvent(Id, AccountCode, CurrencyCode, "Reactivate", userId, UpdatedDate.Value));
        }

        public void MarkUsed(int? userId)
        {
            Used = true;
            UpdatedByUserId = userId;
            UpdatedDate = DateTime.UtcNow;
            AddDomainEvent(new AccountCurrencyChangedAuditEvent(Id, AccountCode, CurrencyCode, "Used", userId, UpdatedDate.Value));
        }

        // قاعدة: لا يسمح بحذف عملة مستخدمة
        public void EnsureDeletable()
        {
            if (Used)
                throw new AccountCurrencyInUseException(Id, "Cannot delete AccountCurrency while it is used in transactions.");
        }
    }
}