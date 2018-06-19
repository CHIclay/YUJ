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
    public class Write_KeepService
    {
       
        //用户收藏他人创作
        public static int scchuangzuo(Write_Keep wk)
        {
            string sql = "insert into Write_Keep(Wk_user_id,Wk_wri_id,Wk_time) values(@wk_user_id,@wk_wri_id,@wk_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("wk_user_id",wk.Wk_user_id1),
                new SqlParameter("wk_wri_id",wk.Wk_wri_id1),
                new SqlParameter("wk_time",wk.Wk_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //用户查看自己收藏的他人的创作
        public static DataTable ckshoucang(int user_id)
        {
            string sql = "select wri_id,wri_name,wri_mess,wri_image,wri_time,user_name,wk_id,wk_time from Write,Users,Write_Keep where wk_user_id=user_id and wk_wri_id=wri_id and wk_user_id='" + user_id + "' order by wk_time desc";
            return DBHelper.GetFillData(sql);
        }

       
        //删除创作收藏
        public static int delete(string writekeep)
        {
            string sql = "delete Write_Keep where wk_id=@wk_id";
            SqlParameter[] sp=new SqlParameter[]
            {
                new SqlParameter("@wk_id",writekeep)

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
