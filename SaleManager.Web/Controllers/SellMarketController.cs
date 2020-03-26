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
        
    }
}