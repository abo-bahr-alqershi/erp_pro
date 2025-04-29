/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع تاريخ ترحيل مغلق أو فترة مغلقة.</summary>
public class JournalDetailBranchPostingDateClosedException : DomainException
{
    public JournalDetailBranchPostingDateClosedException(string message) : base(message) { }
}