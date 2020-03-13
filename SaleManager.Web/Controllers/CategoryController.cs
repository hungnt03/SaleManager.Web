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
    public class CategoryController : BaseController
    {
        // GET: Category
        public ActionResult Index()
        {
            var categories = _db.Category.ToList();
            var results = _mapper.Map<List<Category>, List<CategoryModel>>(categories);
            if(TempData["Mess"] != null)
                ViewBag.Mess = TempData["Mess"].ToString();
            return View(results);
        }
        public ActionResult Add()
        {
            return View(new CategoryModel());
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(CategoryModel model)
        {
            if (ModelState.IsValid)
            {                
                var category = _mapper.Map<Category>(model);
                category.CreatedDate = DateTime.Now;
                category.CreatedBy = _current.User;
                _db.Category.Add(category);
                _db.SaveChanges();
                TempData["Mess"] = "Add success";
                return RedirectToAction("Index");
            }
            return View("Add", model);            
        }

        public ActionResult Edit(int? id)
        {            
            if(id == null)
            {
                TempData["Mess"] = "Id not exists";
                return RedirectToAction("Index");
            }
            var category = _db.Category.Find(id);
            if (category == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }            
            var result = _mapper.Map<CategoryModel>(category);
            return View(result);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(CategoryModel model)
        {
            if (ModelState.IsValid)
            {
                var category = _db.Category.Find(model.Id);
                if(category == null)
                {
                    TempData["Mess"] = "Data not exists";
                    return RedirectToAction("Index");
                }
                category.UpdatedBy = _current.User;
                category.UpdatedDate = DateTime.Now;
                category.Name = model.Name;
                category.Description = model.Description;
                _db.Category.Attach(category);
                _db.Entry(category).State = EntityState.Modified;
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
            var category = _db.Category.Find(id);
            if (category == null)
            {
                TempData["Mess"] = "Data not exists";
                return RedirectToAction("Index");
            }
            _db.Category.Remove(category);
            _db.SaveChanges();
            TempData["Mess"] = "Delete success";
            return RedirectToAction("Index");
        }
    }
}