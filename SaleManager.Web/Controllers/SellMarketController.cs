using Newtonsoft.Json;
using SaleManager.Web.Entities;
using SaleManager.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaleManager.Web.Controllers
{
    public class SellMarketController : BaseController
    {
        // GET: SellMarket
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SearchProduct(string condition)
        {
            var product = _db.Product.Where(p => p.Barcode.Equals(condition) || p.Name.Equals(condition)).FirstOrDefault();            
            return Content(JsonConvert.SerializeObject(new { data = product }));
        }
        [HttpPost]
        public ActionResult SearchProducts(string condition)
        {
            var products = _db.Product.Where(p => p.Barcode.Contains(condition) || p.Name.Contains(condition)).ToList();
            return Content(JsonConvert.SerializeObject(new { data = products }));
        }
        public ActionResult CreateTransaction()
        {
            var idMax = _db.Transaction.OrderByDescending(o => o.Id).Select(s=>s.Id).FirstOrDefault();
            var transaction = new Transaction();
            transaction.Id = idMax + 1;
            transaction.CreatedDate = DateTime.Now;
            transaction.CreatedBy = _current.User;
            transaction.Type = 2;
            _db.Transaction.Add(transaction);
            _db.SaveChanges();
            return Content(JsonConvert.SerializeObject(new { data = transaction.Id }));
        }

        public ActionResult GetTransaction()
        {
            var results = new List<TransactionModel>();
            var transactions = _db.Transaction.Where(c => c.Type == 2).ToList();            
            foreach(var tran in transactions)
            {
                var result = new TransactionModel();
                result.Id = tran.Id;
                var details = _db.TransactionDetail.Where(c => c.TracsactionId == tran.Id).ToList();
                result.Details = new List<TransactionDetailModel>();
                foreach(var elm in details)
                {
                    var tranDetail = new TransactionDetailModel();
                    var product = _db.Product.Find(elm.Barcode);
                    tranDetail.Amount = elm.Amount ?? 0;
                    tranDetail.Barcode = elm.Barcode;
                    tranDetail.Name = product.Name;
                    tranDetail.Price = product.Price ?? 0;
                    tranDetail.Quantity = elm.Quantity;
                    result.Details.Add(tranDetail);
                }
                results.Add(result);
            }
            return Content(JsonConvert.SerializeObject(new { data = results }));
        }
    }
}