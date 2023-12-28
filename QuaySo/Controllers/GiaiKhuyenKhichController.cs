using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuaySo.Controllers
{
    public class GiaiKhuyenKhichController : BaseController
    {
        // GET: GiaiKhuyenKhich
        public ActionResult Index()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.GiaiThuongs.Where(v => v.ID == 5).FirstOrDefault();
            return View(data);
            }
        }
           public ActionResult dsGiaiThuong()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.GiaiThuongs.Where(v=>v.ProcessDefault==0).ToList();
                return PartialView(data);
            }
        }
        [HttpPost]
        public ActionResult QuayGiai(int ID_GiaiThuong)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var SlDaQuay = $@"select   T2.SoLuong  - T1.Qty as Qty from (

                                SELECT COUNT('') as Qty,ID_GiaiThuong FROM TrungGiai T1  LEFT JOIN [Staff] AS T2 ON T1.Code=RIGHT(T2.code,2)   where ID_GiaiThuong={ID_GiaiThuong} group by ID_GiaiThuong )  

                                AS T1 INNER JOIN GiaiThuong AS T2 ON T1.ID_GiaiThuong= T2.ID
 
                                WHERE T2.ID={ID_GiaiThuong}";

                var daquay = db.Database.SqlQuery<int?>(SlDaQuay).FirstOrDefault();
                if (daquay.HasValue && daquay <= 0)
                {
                    return Json("", JsonRequestBehavior.AllowGet);
                }
                var data = db.Database.SqlQuery<string>("EXEC [dbo].[QuayThuong_kk]").FirstOrDefault();
                 return Json(data, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public ActionResult NumKetQua(int ID_GiaiThuong)
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.GiaiThuongs.Where(v => v.ID == ID_GiaiThuong).FirstOrDefault();
                var DaQuay = db.Database.SqlQuery<int>("select count('')   from [TrungGiai] AS T1 LEFT JOIN [Staff] AS T2 ON T1.Code=RIGHT(T2.code,2) where ID_GiaiThuong=" + ID_GiaiThuong).FirstOrDefault();
                return Json(new { DaQuay = DaQuay, SoLuong = data.SoLuong }, JsonRequestBehavior.AllowGet);
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

        public ActionResult HienThiToanBoNguoiTrungGiai()
        {
            using (Models.QuaySoEntities db = new Models.QuaySoEntities())
            {
                var data = db.TrungGiais.OrderByDescending(z => z.DateCreate).ToList();
                return PartialView(data);
            }
        }
    }
}