/// <summary>يُرمى هذا الاستثناء عند محاولة معالجة مالية بدون تدقيق أو اعتماد تدقيق.</summary>
public class JournalDetailBranchAuditRequiredException : DomainException
{
    public JournalDetailBranchAuditRequiredException(string message) : base(message) { }
}