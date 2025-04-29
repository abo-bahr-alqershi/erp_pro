/// <summary>يُرمى هذا الاستثناء عند تكرار الرقم التسلسلي لنفس القيد/الفرع.</summary>
public class JournalDetailBranchDuplicatedSerialException : DomainException
{
    public JournalDetailBranchDuplicatedSerialException(string message) : base(message) { }
}