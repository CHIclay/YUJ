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
    public class Write_CommentService
    {
        //用户添加创作评论
        public static int write_comment(Write_Comment wc)
        {
            string sql = "insert into Write_Comment(Wc_user_id,Wc_wri_id,Wc_mess,Wc_time) values(@wc_user_id,@wc_wri_id,@wc_mess,@wc_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@wc_user_id",wc.Wc_user_id1),
                new SqlParameter("@wc_wri_id",wc.Wc_wri_id1),
                new SqlParameter("@wc_mess",wc.Wc_mess1),
                new SqlParameter("@wc_time",wc.Wc_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }


       //显示用户关于创作的评论
        public static DataTable plwri(int write_id)
        {
            string sql = "select wc_wri_id,wc_id,wc_mess,wc_time,user_name,wri_id from Write_Comment,Users,Write where wc_user_id=user_id and wc_wri_id=wri_id and wri_id='" + write_id + "' order by wc_time desc";
            return DBHelper.GetFillData(sql);
        }

        

        //管理员查看所有创作评论
        public static DataTable allwc()
        {
            string sql = "select wc_id,wc_user_id,wc_wri_id,wc_mess,wc_time,wri_id,wri_name,user_id,user_name from Write_Comment,Write,Users where wc_user_id=user_id and wc_wri_id=wri_id";
            return DBHelper.GetFillData(sql);
        }
        //删除创作评论
        public static int delete(string wcid)
        {
            string sql = "delete Write_Comment where wc_id=@wc_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@wc_id",wcid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }


    }
}
