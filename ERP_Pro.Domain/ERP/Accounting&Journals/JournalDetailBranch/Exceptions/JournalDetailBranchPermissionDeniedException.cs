/// <summary>يُرمى هذا الاستثناء عند محاولة وصول غير مصرّح.</summary>
public class JournalDetailBranchPermissionDeniedException : DomainException
{
    public JournalDetailBranchPermissionDeniedException(string message) : base(message) { }
}