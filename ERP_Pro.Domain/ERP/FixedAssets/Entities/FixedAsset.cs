using ERP_Pro.Domain.Common.Entities;
using System;
using System.Collections.Generic;

namespace ERP_Pro.Domain.FixedAssets.Entities
{
    public class FixedAsset : AggregateRoot<int>
    {
        public string AssetCode { get; set; }
        public string Name { get; set; }
        public int? CategoryId { get; set; }
        public FixedAssetCategory Category { get; set; }
        public string SerialNumber { get; set; }
        public string Description { get; set; }
        public DateTime AcquisitionDate { get; set; }
        public decimal AcquisitionCost { get; set; }
        public decimal? ResidualValue { get; set; }
        public int UsefulLife { get; set; } // in months
        public DateTime? DepreciationStartDate { get; set; }
        public decimal? AccumulatedDepreciation { get; set; }
        public decimal? BookValue { get; set; }
        public DepreciationMethod DepreciationMethod { get; set; }
        public FixedAssetStatus Status { get; set; }
        public int? LocationId { get; set; }
        public string Department { get; set; }
        public string Custodian { get; set; }
        public bool IsActive { get; set; }
        public ICollection<FixedAssetAttachment> Attachments { get; set; }
        public ICollection<FixedAssetHistory> History { get; set; }
    }
}