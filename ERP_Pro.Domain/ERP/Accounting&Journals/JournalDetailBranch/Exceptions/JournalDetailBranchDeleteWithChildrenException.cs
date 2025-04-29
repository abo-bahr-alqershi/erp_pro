/// <summary>يُرمى هذا الاستثناء عند محاولة حذف وله أبناء أو ارتباطات.</summary>
public class JournalDetailBranchDeleteWithChildrenException : DomainException
{
    public JournalDetailBranchDeleteWithChildrenException(string message) : base(message) { }
}