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
        
        public ActionResult SeachProduct(string condition)
        {
            var products = _db.Product.Where(p => p.Barcode.Contains(condition) || p.Name.Contains(condition)).ToList();
            if (products.Count == 1)
            {
                var result = _mapper.Map<Product, ProductBillModel>(products.FirstOrDefault());
                return Content(JsonConvert.SerializeObject(new { Bill = result, Recomment = string.Empty }));
            }            
            if (products.Count > 1)
            {
                var results = _mapper.Map<List<Product>, List<ProductBillModel>>(products);
                return Content(JsonConvert.SerializeObject(new { Bill = string.Empty, Recomment = results }));
            }                
            return Content(JsonConvert.SerializeObject(new { Bill = string.Empty, Recomment = string.Empty }));
        }
    }
}