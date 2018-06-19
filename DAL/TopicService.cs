using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using Models;

namespace DAL
{
    public class TopicService
    {
        //查看所有的帖子
        public static DataTable alltop()
        {
            string sql = "select top_id,top_name,top_mess,top_image,top_type,top_time,user_name from Topic,Users where us_user_id=user_id order by top_time desc";
            return DBHelper.GetFillData(sql);
        }

        //查看传统文学类型的帖子
        public static DataTable topctwx()
        {
            string sql = "select top_id,top_name,top_mess,top_image,top_type,top_time,user_name from Topic,Users where us_user_id=user_id and top_type='传统文学' order by top_time desc";
            return DBHelper.GetFillData(sql);
        }

        //查看现代网文类型的帖子
        public static DataTable topxdww()
        {
            string sql = "select top_id,top_name,top_mess,top_image,top_type,top_time,user_name from Topic,Users where us_user_id=user_id and top_type='现代网文' order by top_time desc";
            return DBHelper.GetFillData(sql);
        }
        
        //查看未来科幻类型的帖子
        public static DataTable topwlkh()
        {
            string sql = "select top_id,top_name,top_mess,top_image,top_type,top_time,user_name from Topic,Users where us_user_id=user_id and top_type='未来科幻' order by top_time desc";
            return DBHelper.GetFillData(sql);
        }

        //查看青春小说类型的帖子
        public static DataTable topqcxs()
        {
            string sql = "select top_id,top_name,top_mess,top_image,top_type,top_time,user_name from Topic,Users where us_user_id=user_id and top_type='青春小说' order by top_time desc";
            return DBHelper.GetFillData(sql);
        }

        //用户发帖
        public static int addht(Topic topic)
        {
            string sql="insert into Topic(Us_user_id,Top_name,Top_mess,Top_image,Top_type,Top_time) values(@us_user_id,@top_name,@top_mess,@top_image,@top_type,@top_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter ("@us_user_id",topic.Us_user_id1),
                new SqlParameter("@top_name",topic.Top_name1),
                new SqlParameter("@top_mess",topic.Top_mess1),
                new SqlParameter("@top_image",topic.Top_image1),
                new SqlParameter("@top_type",topic.Top_type1),
                new SqlParameter("@top_time",topic.Top_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //查看话题的详细信息
        public static DataTable Stopid(int topid)
        {
            string sql = "select * from Topic where top_id=@top_id";
            SqlParameter[] sp = new SqlParameter[]
           {
                new SqlParameter("@top_id",topid)
           };
            return DBHelper.GetFillData(sql, sp);

        }

        //显示最新的5个话题
        public static DataTable top5()
        {
            string sql = "select top 5 *from Topic order by top_time desc";
            return DBHelper.GetFillData(sql);
        }

      
        
        //管理员查看所有帖子的信息
        public static DataTable alltopic()
        {
            string sql = "select top_id,us_user_id,top_name,top_mess,top_image,top_type,top_time,user_id,user_name from Topic,Users where us_user_id=user_id";
            return DBHelper.GetFillData(sql);
        }

       

        //删除帖子
        public static int delete(string topname)
        {
            string sql = "delete Topic where top_name=@top_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@top_name",topname)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        

        //根据关键字模糊查询帖子
        public static DataTable selectkeys(string keys)
        {
            string sql = "select top_id,us_user_id,top_name,top_mess,top_image,top_type,top_time,user_id,user_name from Topic,Users where (top_name like '%" + @keys + "%' or top_mess like '%" + @keys + "%' or top_type like '%" + @keys + "%') and us_user_id=user_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("keys",keys)
            };
            DataTable dt = DBHelper.GetFillData(sql, sp);
            return dt;
        }




    }
}
