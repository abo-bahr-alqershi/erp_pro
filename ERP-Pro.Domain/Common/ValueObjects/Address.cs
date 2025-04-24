namespace ERP_Pro.Domain.Common.ValueObjects
{
    public class Address : ValueObject
    {
        public string Details { get; }
        public string City { get; }
        public string Country { get; }

        public Address(string details, string city, string country)
        {
            Details = details;
            City = city;
            Country = country;
        }

        protected override System.Collections.Generic.IEnumerable<object> GetEqualityComponents()
        {
            yield return Details;
            yield return City;
            yield return Country;
        }
    }
}