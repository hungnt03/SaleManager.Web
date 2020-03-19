using SaleManager.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaleManager.Web.Controllers
{
    public class UploadPartialController : Controller
    {
        // GET: UploadPartial
        public ActionResult Index()
        {
            return View();
        }

        [ChildActionOnly]
        public ActionResult Upload(UploadPartialModel model)
        {
            return null;
        }
    }
}