/// <summary>يُرمى هذا الاستثناء عند رفض تدقيق السطر.</summary>
public class JournalDetailBranchAuditRejectedException : DomainException
{
    public JournalDetailBranchAuditRejectedException(string message) : base(message) { }
}