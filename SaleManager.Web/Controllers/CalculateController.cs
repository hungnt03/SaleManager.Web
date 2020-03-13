using SaleManager.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaleManager.Web.Controllers
{
    public class CalculateController : Controller
    {
        // GET: Calculate
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetByRequest()
        {
            var id = Request["id"];
            var name = Request["name"];
            ViewBag.Mess = id + ":" + name;
            return View();
        }
        public ActionResult GetByFormCollection(FormCollection Fields)
        {
            var id = Fields["id"];
            var name = Request.Form["name"];
            ViewBag.Mess = id + ":" + name;
            return View();
        }
        public ActionResult GetByActionArgument(string id, string name)
        {
            ViewBag.Mess = id + ":" + name;
            return View();
        }
        public ActionResult GetByModel(ActionParamModel model)
        {
            ViewBag.Mess = model.id + ":" + model.name;
            var results = new List<ActionParamModel>();
            results.Add(model);
            results.Add(new ActionParamModel { id = "2", name = "name2" });
            return View(results);
        }
        public ActionResult FileUpload()
        {
            var file = Request.Files["doccument"];
            if(file != null && file.ContentLength>0)
            {
                var path = Server.MapPath("~/UploadFiles/" + file.FileName);
                file.SaveAs(path);
                ViewBag.FileName = file.FileName;
                ViewBag.FileType = file.ContentType;
                ViewBag.FileSize = file.ContentLength;
            }
            return View();
        }
    }
}