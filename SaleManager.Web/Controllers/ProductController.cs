using SaleManager.Web.Commons;
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
    public class ProductController : BaseController
    {
        // GET: Product
        public ActionResult Index()
        {
            var products = _db.Product.ToList();
            var results = _mapper.Map<List<Product>, List<ProductModel>>(products);
            if (TempData["Mess"] != null)
                ViewBag.Mess = TempData["Mess"].ToString();
            return View(results);
        }
        public ActionResult Add()
        {
            var model = new ProductModel();
            model.Categories = _db.Category.Select(s => new DropDown() { Key = s.Id, Value = s.Name }).ToList();
            model.Suppliers = _db.Supplier.Select(s => new DropDown() { Key = s.Id, Value = s.Name }).ToList();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(ProductModel model)
        {
            if (ModelState.IsValid)
            {
                var product = _mapper.Map<Product>(model);
                product.CreatedDate = DateTime.Now;
                product.CreatedBy = _current.User;
                _db.Product.Add(product);
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
            var product = _db.Product.Find(id);
            if (product == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }
            var model = _mapper.Map<ProductModel>(product);
            model.Categories = _db.Category.Select(s => new DropDown() { Key = s.Id, Value = s.Name }).ToList();
            model.Suppliers = _db.Supplier.Select(s => new DropDown() { Key = s.Id, Value = s.Name }).ToList();
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ProductModel model)
        {
            if (ModelState.IsValid)
            {
                var product = _db.Product.Find(model.Barcode);
                if (product == null)
                {
                    TempData["Mess"] = "Data not exists";
                    return RedirectToAction("Index");
                }
                product.UpdatedBy = _current.User;
                product.UpdatedDate = DateTime.Now;
                product.Name = model.Name;
                product.Quantity = model.Quantity;
                product.Price = model.Price;
                product.CategoryId = model.CategoryId;
                product.SupplierId = model.SupplierId;
                product.Pin = model.Pin;
                product.Enable = model.Enable;
                product.ExpirationDate = model.ExpirationDate;
                product.Unit = model.Unit;
                product.Img = model.Img;
                _db.Product.Attach(product);
                _db.Entry(product).State = EntityState.Modified;
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
            var product = _db.Product.Find(id);
            if (product == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }
            _db.Product.Remove(product);
            _db.SaveChanges();
            TempData["Mess"] = "Delete success";
            return RedirectToAction("Index");
        }
    }
}