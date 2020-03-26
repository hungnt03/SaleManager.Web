using SaleManager.Web.Commons;
using SaleManager.Web.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace SaleManager.Web.Models
{
    public class ProductModel
    {
        public ProductModel()
        {
            PinValue = "off";
            EnableValue = "on";
        }

        [Required]
        [StringLength(13)]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "Chỉ được nhập số")]
        public string Barcode { get; set; }
        [Required]
        [MaxLength(200)]
        public string Name { get; set; }
        [Required]
        public int Quantity { get; set; }
        [Required]
        [DataType(DataType.Currency)]
        [MaxLength(7)]
        public string Price { set; get; }
        public List<DropDown> Categories { set; get; }
        [Required]
        [RegularExpression(@"^[0-9]*$")]
        public int CategoryId { get; set; }
        public List<DropDown> Suppliers { set; get; }
        [Required]
        [RegularExpression(@"^[0-9]*$")]
        public int SupplierId { get; set; }
        public bool Pin { get{ return PinValue.Equals("on"); } }
        public bool Enable { get { return EnableValue.Equals("on"); } }
        public string PinValue { set; get; }
        public string EnableValue { set; get; }
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> ExpirationDate { get; set; }
        [MaxLength(50)]
        public string Unit { get; set; }
        public string ImgPath { get; set; }
        public string ImgName { get; set; }
        public HttpPostedFileBase Image { get; set; }
        public Product Generate()
        {
            var product = new Product();
            product.Barcode = this.Barcode;
            product.CategoryId = this.CategoryId;
            product.Enable = this.Enable;
            product.ExpirationDate = this.ExpirationDate;
            product.Img = this.ImgName;
            product.Name = this.Name;
            product.Pin = this.Pin;
            product.Price = Convert.ToDecimal(this.Price.Replace(",",string.Empty));
            product.Quantity = this.Quantity;
            product.SupplierId = this.SupplierId;
            product.Unit = this.Unit;
            return product;
        }
    }

    public class ProductRecommentModel
    {
        public string Barcode { get; set; }
        public string Name { set; get; }
        public string ImgPath { set; get; }
    }
    public class ProductBillModel
    {
        public string Barcode { get; set; }
        public string Name { set; get; }
        public int Quantity { set; get; }
        public int Price { set; get; }
        public int Total { set; get; }
    }
}