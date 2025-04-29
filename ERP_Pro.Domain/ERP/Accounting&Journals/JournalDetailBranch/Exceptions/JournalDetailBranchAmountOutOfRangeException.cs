/// <summary>يُرمى هذا الاستثناء عند تجاوز المبلغ المسموح به أو غير منطقي.</summary>
public class JournalDetailBranchAmountOutOfRangeException : DomainException
{
    public JournalDetailBranchAmountOutOfRangeException(string message) : base(message) { }
}