using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SaleManager.Web.Models
{
    public class SellModel
    {

    }
    public class ProductRecommentModel
    {
        public string Barcode { get; set; }
        public string Name { set; get; }
        public string ImgPath { set; get; }
    }
    public class ProductBillModel
    {
        public ProductBillModel()
        {
            this.Quantity = 1;
        }
        public string Barcode { get; set; }
        public string Name { set; get; }
        public int Quantity { set; get; }
        public string Price { set; get; }
        public int Total { set; get; }
    }
}