using Newtonsoft.Json;
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
        public ActionResult Search(string condition)
        {
            var products = _db.Product.Where(p => p.Barcode.Contains(condition) || p.Name.Contains(condition)).ToList();
            if (products.Count == 1)
                return Content(JsonConvert.SerializeObject(new { Bill = products.FirstOrDefault(), Recomment = string.Empty }));
            if (products.Count > 1)
                return Content(JsonConvert.SerializeObject(new { Bill = string.Empty, Recomment = products }));
            return Content(JsonConvert.SerializeObject(new { Bill = string.Empty, Recomment = string.Empty }));
        }
    }
}