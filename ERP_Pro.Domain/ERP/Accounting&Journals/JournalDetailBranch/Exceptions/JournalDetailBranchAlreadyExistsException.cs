/// <summary>يُرمى هذا الاستثناء عند محاولة إضافة سطر مكرر لنفس الفرع.</summary>
public class JournalDetailBranchAlreadyExistsException : DomainException
{
    public JournalDetailBranchAlreadyExistsException(string message) : base(message) { }
}