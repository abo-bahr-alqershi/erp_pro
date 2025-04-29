using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ERP_Pro.Domain.Inventory.Entities
{
    /// <summary>
    /// تعريف المستودع ومعلوماته
    /// </summary>
    public class WarehouseDetail
    {
        /// <summary>
        /// المعرف الرئيسي للمستودع
        /// </summary>
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        /// <summary>
        /// كود المستودع
        /// </summary>
        [Required]
        [MaxLength(20)]
        public string WarehouseCode { get; set; }

        /// <summary>
        /// اسم المستودع
        /// </summary>
        [Required]
        [MaxLength(100)]
        public string WarehouseName { get; set; }

        /// <summary>
        /// رقم مجموعة المستودعات (علاقة مع WarehouseGroup)
        /// </summary>
        public int? WarehouseGroupId { get; set; }

        /// <summary>
        /// الدولة (علاقة مع Country)
        /// </summary>
        public int? CountryId { get; set; }

        /// <summary>
        /// مركز التكلفة (علاقة مع CostCenter)
        /// </summary>
        public int? CostCenterId { get; set; }

        /// <summary>
        /// خصائص الملاحة: مجموعة المستودع
        /// </summary>
        public virtual WarehouseGroup WarehouseGroup { get; set; }

        /// <summary>
        /// خصائص الملاحة: الدولة
        /// </summary>
        public virtual Country Country { get; set; }

        /// <summary>
        /// خصائص الملاحة: مركز التكلفة
        /// </summary>
        public virtual CostCenter CostCenter { get; set; }

        /// <summary>
        /// خصائص الملاحة: تفاصيل أماكن التخزين (BINs)
        /// </summary>
        public virtual ICollection<BinDetail> BinDetails { get; set; }
    }
}
