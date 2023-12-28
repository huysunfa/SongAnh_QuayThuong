using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuaySo.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DSNGUOITRUNGGIAI()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.NGUOITRUNGGIAIs.OrderBy(z => z.id_giaithuong).ToList();
                return View(data);
            }
        }

        public ActionResult dsGiaiThuong()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.GiaiThuongs.Where(v => v.ProcessDefault == 0 && v.SoLuong > 0).ToList();
                return PartialView(data);
            }
        }
        public ActionResult HienThiToanBoNguoiTrungGiai()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.TrungGiais.OrderByDescending(z => z.DateCreate).ToList();
                return PartialView(data);
            }
        }
        [HttpPost]
        public ActionResult NumKetQua(int ID_GiaiThuong)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.GiaiThuongs.Where(v => v.ID == ID_GiaiThuong).FirstOrDefault();
                var DaQuay = db.Database.SqlQuery<int>("select count('') from [TrungGiai] where ID_GiaiThuong=" + ID_GiaiThuong).FirstOrDefault();
                return Json(new { DaQuay = DaQuay, SoLuong = data.SoLuong }, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public ActionResult quaylai(String code)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.Database.ExecuteSqlCommand("UPDATE TrungGiai SET ID_GiaiThuong=0 where Code='" + code + "' ");
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult DsTrungGiai(int ID_GiaiThuong)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.TrungGiais.Where(v => v.ID_GiaiThuong == ID_GiaiThuong).OrderByDescending(z => z.DateCreate).ToList();
                return PartialView(data);
            }
        }
        [HttpPost]
        public ActionResult QuayGiai(int ID_GiaiThuong)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var SlDaQuay = @"select   T2.SoLuong  - T1.Qty as Qty from (

                                SELECT COUNT('') as Qty,ID_GiaiThuong FROM TrungGiai group by ID_GiaiThuong )  

                                AS T1 INNER JOIN GiaiThuong AS T2 ON T1.ID_GiaiThuong= T2.ID
 
                                WHERE T2.ID=" + ID_GiaiThuong;

                var daquay = db.Database.SqlQuery<int?>(SlDaQuay).FirstOrDefault();
                if (daquay.HasValue && daquay <= 0)
                {
                    return Json("", JsonRequestBehavior.AllowGet);
                }

                var data = db.Database.SqlQuery<string>("EXEC [dbo].[QuayThuong]").FirstOrDefault();
                return Json(new { data = data, ID = ID_GiaiThuong }, JsonRequestBehavior.AllowGet);
            }
        }


        [HttpPost]
        public ActionResult clearall()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                db.Database.ExecuteSqlCommand("select * into  TrungGiai" + DateTime.Now.ToString("ddMMyyyHHmmss") + "   from TrungGiai");
                db.Database.ExecuteSqlCommand("delete from TrungGiai");
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public ActionResult ThemNguoiTrungGiai(int ID_GIAI = 0, string Staff = "")
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var SlDaQuay = @"select   T2.SoLuong  - T1.Qty as Qty from (

                                SELECT COUNT('') as Qty,ID_GiaiThuong FROM TrungGiai group by ID_GiaiThuong )  

                                AS T1 INNER JOIN GiaiThuong AS T2 ON T1.ID_GiaiThuong= T2.ID
 
                                WHERE T2.ID=" + ID_GIAI;

                var daquay = db.Database.SqlQuery<int?>(SlDaQuay).FirstOrDefault();
                if (daquay.HasValue && daquay <= 0)
                {
                    return Json("", JsonRequestBehavior.AllowGet);
                }

                Models.TrungGiai tg = new Models.TrungGiai();
                tg.Code = Staff;
                tg.Name = db.Staffs.Where(v => v.code == Staff).Select(v => v.name).FirstOrDefault();
                tg.ID_GiaiThuong = ID_GIAI;
                tg.DateCreate = DateTime.Now;
                db.TrungGiais.Add(tg);
                db.SaveChanges();
                return Json("", JsonRequestBehavior.AllowGet);
            }
        }
      
    }
}