/// <summary>يُرمى هذا الاستثناء عند عدم وجود مستند مرجعي مرتبط.</summary>
public class JournalDetailBranchReferenceNotFoundException : DomainException
{
    public JournalDetailBranchReferenceNotFoundException(string message) : base(message) { }
}