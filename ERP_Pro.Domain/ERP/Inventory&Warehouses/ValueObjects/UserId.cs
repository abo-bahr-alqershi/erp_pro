// ValueObject: UserId
// يستخدم لكل الحقول مثل: AddedByUserId, UpdatedByUserId, PostUserId, UnpostUserId, AuditRefUserId, InactiveUserId, AuditUserId وغيرها
using Common.Domain;

public sealed class UserId : ValueObject
{
    public int Value { get; }
    public UserId(int value)
    {
        if (value < 0)
            throw new ArgumentException("UserId must be non-negative.");
        Value = value;
    }
    protected override IEnumerable<object> GetEqualityComponents()
    {
        yield return Value;
    }
}