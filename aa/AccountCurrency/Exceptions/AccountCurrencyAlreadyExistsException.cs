using System;

namespace ERP_Pro.Domain.Accounting.Exceptions
{
    /// <summary>
    /// استثناء عند محاولة ربط نفس العملة بنفس الحساب مرتين
    /// </summary>
    public class AccountCurrencyAlreadyExistsException : Exception
    {
        public object AccountCurrencyId { get; }
        public AccountCurrencyAlreadyExistsException(object id, string message) : base(message)
        {
            AccountCurrencyId = id;
        }
    }
}