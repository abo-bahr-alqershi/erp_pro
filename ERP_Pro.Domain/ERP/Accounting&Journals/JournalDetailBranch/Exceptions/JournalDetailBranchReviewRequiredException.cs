/// <summary>يُرمى هذا الاستثناء عند محاولة الترحيل المالي بدون مراجعة.</summary>
public class JournalDetailBranchReviewRequiredException : DomainException
{
    public JournalDetailBranchReviewRequiredException(string message) : base(message) { }
}