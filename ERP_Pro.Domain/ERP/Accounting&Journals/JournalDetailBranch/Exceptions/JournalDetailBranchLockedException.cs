/// <summary>يُرمى هذا الاستثناء عند محاولة عملية على سطر مقفل أو مرحل.</summary>
public class JournalDetailBranchLockedException : DomainException
{
    public JournalDetailBranchLockedException(string message) : base(message) { }
}