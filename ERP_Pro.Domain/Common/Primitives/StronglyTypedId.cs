using System;

namespace ERPPro.Domain.Common.Primitives
{
    // Base class for strongly typed IDs (optional, but recommended for large ERP systems)
    public abstract record StronglyTypedId<TValue>
        where TValue : notnull
    {
        public TValue Value { get; }

        protected StronglyTypedId(TValue value)
        {
            Value = value;
        }

        public override string ToString() => Value.ToString() ?? string.Empty;
    }
}