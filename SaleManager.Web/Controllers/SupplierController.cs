using SaleManager.Web.Entities;
using SaleManager.Web.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SaleManager.Web.Controllers
{
    public class SupplierController : BaseController
    {
        // GET: Supplier
        public ActionResult Index()
        {
            var suppliers = _db.Supplier.ToList();
            var results = _mapper.Map<List<Supplier>, List<SupplierModel>>(suppliers);
            if (TempData["Mess"] != null)
                ViewBag.Mess = TempData["Mess"].ToString();
            return View(results);
        }
        public ActionResult Add()
        {
            return View(new SupplierModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(SupplierModel model)
        {
            if (ModelState.IsValid)
            {                
                var supplier = _mapper.Map<Supplier>(model);
                supplier.CreatedDate = DateTime.Now;
                supplier.CreatedBy = _current.User;
                _db.Supplier.Add(supplier);
                _db.SaveChanges();
                TempData["Mess"] = "Add success";
                return RedirectToAction("Index");
            }
            return View("Add", model);
        }

        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                TempData["Mess"] = "Id not exists";
                return RedirectToAction("Index");
            }
            var supplier = _db.Supplier.Find(id);
            if (supplier == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }
            var result = _mapper.Map<SupplierModel>(supplier);
            return View(result);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(SupplierModel model)
        {
            if (ModelState.IsValid)
            {
                var supplier = _db.Supplier.Find(model.Id);
                if (supplier == null)
                {
                    TempData["Mess"] = "Data not exists";
                    return RedirectToAction("Index");
                }
                supplier.UpdatedBy = _current.User;
                supplier.UpdatedDate = DateTime.Now;
                supplier.Name = model.Name;
                supplier.Address = model.Address;
                supplier.Contact1 = model.Contact1;
                supplier.Contact2 = model.Contact2;
                _db.Supplier.Attach(supplier);
                _db.Entry(supplier).State = EntityState.Modified;
                _db.SaveChanges();
                TempData["Mess"] = "Edit success";
                return RedirectToAction("Index");
            }
            return View("Edit", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                TempData["Mess"] = "Id not exists";
                return RedirectToAction("Index");
            }
            var supplier = _db.Supplier.Find(id);
            if (supplier == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }
            _db.Supplier.Remove(supplier);
            _db.SaveChanges();
            TempData["Mess"] = "Delete success";
            return RedirectToAction("Index");
        }
    }
}