using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;

namespace Model.DAO
{
    public class DoctorDAO
    {
        OnlineShopDBContext db = null;

        public DoctorDAO()
        {
            db = new OnlineShopDBContext();
        }

        public IEnumerable<Doctor> ListAllPaging(string searchString, int page, int pageSize)
        {
            IOrderedQueryable<Doctor> query = db.Doctors;
            if (!string.IsNullOrEmpty(searchString))
            {
                query = query.Where(x => x.Name.Contains(searchString) || x.Phone.Contains(searchString))
                    .OrderBy(p => p.Name);
            }
            return query.OrderBy(p => p.Name).ToPagedList(page, pageSize);
        }

        public long Insert(Doctor doctor)
        {
            db.Doctors.Add(doctor);
            db.SaveChanges();
            return doctor.Id;
        }

        public long Update(Doctor doctor)
        {
            db.SaveChanges();
            return doctor.Id;
        }
    }
    
}
