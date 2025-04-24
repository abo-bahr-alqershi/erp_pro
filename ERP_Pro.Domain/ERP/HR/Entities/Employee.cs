using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.HR.Entities
{
    public class Employee : AggregateRoot<int>
    {
        public string EmployeeCode { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public int? DepartmentId { get; set; }
        public Department Department { get; set; }
        public string JobTitle { get; set; }
        public string NationalId { get; set; }
        public string PassportNo { get; set; }
        public string Gender { get; set; }
        public DateTime BirthDate { get; set; }
        public DateTime HireDate { get; set; }
        public DateTime? TerminationDate { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public bool IsActive { get; set; }
        public decimal BasicSalary { get; set; }
        public decimal? Allowances { get; set; }
        public decimal? Deductions { get; set; }
        public string Notes { get; set; }
        public ICollection<EmployeeAttachment> Attachments { get; set; }
    }
}