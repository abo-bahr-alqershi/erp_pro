/// <summary>يُرمى هذا الاستثناء عند وجود حالة غير منطقية للسطر.</summary>
public class JournalDetailBranchInvalidStateException : DomainException
{
    public JournalDetailBranchInvalidStateException(string message) : base(message) { }
}