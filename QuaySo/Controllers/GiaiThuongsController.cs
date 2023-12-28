using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QuaySo.Models;

namespace QuaySo.Controllers
{
    public class GiaiThuongsController : BaseController
    {
        private QuaySoEntities db = new QuaySoEntities();

        // GET: GiaiThuongs
        public ActionResult Index()
        {
            return View(db.GiaiThuongs.ToList());
        }

       

        // GET: GiaiThuongs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GiaiThuongs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,TenGiai,SoLuong,Image,STT,ProcessDefault,TenPhanThuong,GiaTri")] GiaiThuong giaiThuong)
        {
            if (ModelState.IsValid)
            {
                giaiThuong.STT = db.GiaiThuongs.Where(v => v.ProcessDefault == 0).Max(z=>z.STT)+1;
                db.GiaiThuongs.Add(giaiThuong);
                db.SaveChanges();
                return Redirect("/#giai_"+giaiThuong.ID);
            }

            return View(giaiThuong);
        }

        // GET: GiaiThuongs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GiaiThuong giaiThuong = db.GiaiThuongs.Find(id);
            if (giaiThuong == null)
            {
                return HttpNotFound();
            }
            return View(giaiThuong);
        }

        // POST: GiaiThuongs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,TenGiai,SoLuong,Image,TenPhanThuong,GiaTri")] GiaiThuong giaiThuong)
        {
            if (ModelState.IsValid)
            {
                var item = db.GiaiThuongs.Where(v => v.ID == giaiThuong.ID).FirstOrDefault();
                item.TenGiai = giaiThuong.TenGiai;
                item.SoLuong = giaiThuong.SoLuong;
                item.Image = giaiThuong.Image;
                item.TenPhanThuong = giaiThuong.TenPhanThuong;
                item.GiaTri = giaiThuong.GiaTri;

                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(giaiThuong);
        }

        // GET: GiaiThuongs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            GiaiThuong giaiThuong = db.GiaiThuongs.Find(id);
            if (giaiThuong == null)
            {
                return HttpNotFound();
            }
            return View(giaiThuong);
        }

        // POST: GiaiThuongs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            GiaiThuong giaiThuong = db.GiaiThuongs.Find(id);
            db.GiaiThuongs.Remove(giaiThuong);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
