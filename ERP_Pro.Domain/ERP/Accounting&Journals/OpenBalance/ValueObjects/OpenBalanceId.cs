using ERP_Pro.Domain.Common.Primitives;
using ERP_Pro.Domain.Common.ValueObjects;

namespace ERP_Pro.Accounting.Domain.OpenBalance.ValueObjects
{
    /// <summary>
    /// يمثل المعرف المركب الفريد لرصيد افتتاحي (مكون من رقم الحساب، رقم الفرع، رقم الشركة، تسلسل المستند).
    /// </summary>
    public sealed class OpenBalanceId : ValueObject
    {
        /// <summary>رمز الحساب.</summary>
        public string AccountCode { get; }
        /// <summary>رقم الشركة.</summary>
        public int CompanyNo { get; }
        /// <summary>رقم الفرع.</summary>
        public int BranchNo { get; }
        /// <summary>تسلسل المستند.</summary>
        public long DocSequence { get; }

        /// <param name="accountCode">رمز الحساب</param>
        /// <param name="companyNo">رقم الشركة</param>
        /// <param name="branchNo">رقم الفرع</param>
        /// <param name="docSequence">تسلسل المستند</param>
        public OpenBalanceId(string accountCode, int companyNo, int branchNo, long docSequence)
        {
            AccountCode = accountCode;
            CompanyNo = companyNo;
            BranchNo = branchNo;
            DocSequence = docSequence;
        }

        protected override IEnumerable<object> GetEqualityComponents()
        {
            yield return AccountCode;
            yield return CompanyNo;
            yield return BranchNo;
            yield return DocSequence;
        }
    }
}
