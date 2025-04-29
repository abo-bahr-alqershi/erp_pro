/// <summary>يُرمى هذا الاستثناء عند محاولة وصول مستخدم غير مصرّح.</summary>
public class JournalDetailBranchUserNotAuthorizedException : DomainException
{
    public JournalDetailBranchUserNotAuthorizedException(string message) : base(message) { }
}