using ERP_Pro.Domain.Common.Primitives;
using System;

namespace ERP_Pro.Domain.Accounting.ValueObjects
{
    /// <summary>
    /// معرف مركب لربط الحساب بعملة (AccountCode + CurrencyCode)
    /// </summary>
    public class AccountCurrencyId : ValueObject
    {
        public string AccountCode { get; }
        public string CurrencyCode { get; }

        public AccountCurrencyId(string accountCode, string currencyCode)
        {
            if (string.IsNullOrWhiteSpace(accountCode)) throw new ArgumentNullException(nameof(accountCode));
            if (string.IsNullOrWhiteSpace(currencyCode)) throw new ArgumentNullException(nameof(currencyCode));
            AccountCode = accountCode;
            CurrencyCode = currencyCode;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return AccountCode;
            yield return CurrencyCode;
        }

        public override string ToString() => $"{AccountCode}-{CurrencyCode}";
    }
}