using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Models;
namespace DAL
{
    public  class List_KeepService
    {
        //用户收藏他人书单
        public static int scshudan(List_Keep lk)
        {
            string sql = "insert into List_Keep(Lk_user_id,Lk_list_name,Lk_time) values(@lk_user_id,@lk_list_name,@lk_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("lk_user_id",lk.Lk_user_id1),
                new SqlParameter("lk_list_name",lk.Lk_list_name1),
                new SqlParameter("lk_time",lk.Lk_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //用户查看自己收藏的他人的书单
        public static DataTable ckshoucang(int user_id)
        {
            string sql = "select list1_id,list1_name,list1_mess,list1_image,list1_time,user_name,lk_id,lk_time from List1,Users,List_Keep where lk_user_id=user_id and lk_list_name=list1_name and lk_user_id='" + user_id + "' order by lk_time desc";
            return DBHelper.GetFillData(sql);
        }

        
        //删除书单收藏
        public static int delete(string listkeep)
        {
            string sql = "delete List_Keep where lk_id=@lk_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@lk_id",listkeep)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

    }
}
