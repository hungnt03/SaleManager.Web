using SaleManager.Web.Commons;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace SaleManager.Web.Models
{
    public class ProductModel
    {
        [Required]
        [StringLength(13)]
        [RegularExpression(@"^\d$", ErrorMessage = "Chỉ được nhập số")]
        public string Barcode { get; set; }
        [Required]
        [MaxLength(200)]
        public string Name { get; set; }
        [Required]
        public int Quantity { get; set; }
        [Required]
        [DataType(DataType.Currency)]
        [MaxLength(6)]
        public decimal Price { get; set; }
        public List<DropDown> Categories { set; get; }
        [Required]
        [RegularExpression(@"^\d$")]
        public int CategoryId { get; set; }
        public List<DropDown> Suppliers { set; get; }
        [Required]
        [RegularExpression(@"^\d$")]
        public int SupplierId { get; set; }
        public bool Pin { get; set; }
        public bool Enable { get; set; }
        public Nullable<System.DateTime> ExpirationDate { get; set; }
        [MaxLength(50)]
        public string Unit { get; set; }
        public string Img { get; set; }
    }
}