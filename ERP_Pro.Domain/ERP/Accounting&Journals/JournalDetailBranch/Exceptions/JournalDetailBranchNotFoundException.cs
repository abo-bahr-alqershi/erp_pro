/// <summary>يُرمى هذا الاستثناء عند محاولة الوصول لسطر غير موجود.</summary>
public class JournalDetailBranchNotFoundException : DomainException
{
    public JournalDetailBranchNotFoundException(string message) : base(message) { }
}