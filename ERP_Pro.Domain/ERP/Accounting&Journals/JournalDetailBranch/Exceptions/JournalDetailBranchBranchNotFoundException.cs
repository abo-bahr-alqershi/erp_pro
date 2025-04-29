/// <summary>يُرمى هذا الاستثناء عند محاولة التعامل مع فرع غير موجود بالنظام.</summary>
public class JournalDetailBranchBranchNotFoundException : DomainException
{
    public JournalDetailBranchBranchNotFoundException(string message) : base(message) { }
}