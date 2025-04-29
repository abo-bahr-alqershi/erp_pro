using System;

namespace ERP_Pro.Domain.Accounting.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة الوصول إلى ربط حساب بعملة غير موجود
    /// </summary>
    public class AccountCurrencyNotFoundException : Exception
    {
        public object AccountCurrencyId { get; }
        public AccountCurrencyNotFoundException(object id, string message) : base(message)
        {
            AccountCurrencyId = id;
        }
    }
}