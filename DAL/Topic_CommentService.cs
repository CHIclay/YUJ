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
    public class Topic_CommentService
    {
       
        public static int topic_comment(Topic_Comment tc)
        {
            //用户发表话题评论
            string sql = "insert into Topic_Comment(Tc_user_id,Tc_top_id,Tc_mess,Tc_time) values(@tc_user_id,@tc_top_id,@tc_mess,@tc_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@tc_user_id",tc.Tc_user_id1),
                new SqlParameter("@tc_top_id",tc.Tc_top_id1),
                new SqlParameter("@tc_mess",tc.Tc_mess1),
                new SqlParameter("@tc_time",tc.Tc_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

       //用户查看话题评论
        public static DataTable pltop(int topic_id)
        {
            string sql = "select tc_top_id,tc_id,tc_mess,tc_time,user_name,top_id from Topic_Comment,Users,Topic where tc_user_id=user_id and tc_top_id=top_id and top_id='" + topic_id + "' order by tc_time desc";
            return DBHelper.GetFillData(sql);
        }

        

        //管理员查看话题评论信息
        public static DataTable admin_tc()
        {
            string sql = "select tc_id,tc_user_id,tc_top_id,tc_mess,tc_time,top_id,top_name,user_id,user_name from Topic_Comment,Topic,Users where top_id=tc_top_id and user_id=tc_user_id order by tc_time desc";
            return DBHelper.GetFillData(sql);
        }

        //删除话题评论
        public static int delete(string tcid)
        {
            string sql="delete Topic_Comment where tc_id=@tc_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@tc_id",tcid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

    }
}
