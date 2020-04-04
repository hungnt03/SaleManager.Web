using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SaleManager.Web.Models
{
    public class TransactionModel
    {
        public int Id { get; set; }
        public int Type { get; set; }
        public bool IsPayment { get; set; }
        public int Amount { get; set; }
        public int Payment { get; set; }
        public int PayBack { get; set; }
        public List<TransactionDetailModel> Details { set; get; }
        public string Href { get { return "#menu" + Id; } }
        public string TabId { get { return "menu" + Id; } }
        public string TabName { get { return "Hoá đơn " + Id; } }
    }
}