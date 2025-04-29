/// <summary>يُرمى هذا الاستثناء عند حصول خطأ في المعالجة المالية.</summary>
public class JournalDetailBranchFinancialErrorException : DomainException
{
    public JournalDetailBranchFinancialErrorException(string message) : base(message) { }
}