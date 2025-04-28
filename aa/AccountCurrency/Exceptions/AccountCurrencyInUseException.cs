using System;

namespace ERP_Pro.Domain.Accounting.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة حذف ربط عملة بحساب وهي مستخدمة في حركات
    /// </summary>
    public class AccountCurrencyInUseException : Exception
    {
        public object AccountCurrencyId { get; }
        public AccountCurrencyInUseException(object id, string message) : base(message)
        {
            AccountCurrencyId = id;
        }
    }
}