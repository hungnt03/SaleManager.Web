using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SaleManager.Web.Models
{
    public class TransactionDetailModel
    {
        public string Barcode { get; set; }
        public string Name { set; get; }
        public int Price { set; get; }
        public int TracsactionId { get; set; }
        public string UpdatedBy { get; set; }
        public int Quantity { get; set; }
        public bool IsPayment { get; set; }
        public int Amount { get; set; }
    }
}