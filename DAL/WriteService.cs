using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class WriteService
    {
        //添加创作  
        public static int addwri(Write write)
        {
            string sql = "insert into Write(Wr_user_id,Wri_name,Wri_mess,Wri_image,Wri_time) values(@wr_user_id,@wri_name,@wri_mess,@wri_image,@wri_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@wr_user_id",write.Wr_user_id1),
                new SqlParameter("@wri_name",write.Wri_name1),
                new SqlParameter("@wri_mess",write.Wri_mess1),
                new SqlParameter("@wri_image",write.Wri_image1),
                new SqlParameter("@wri_time",write.Wri_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
       
        //查看全部创作
        public static DataTable allwri()
        {
            string sql = "select wri_id,wri_name,wri_mess,wri_image,wri_time,user_name from Write,Users where wr_user_id=user_id order by wri_time desc";
            return DBHelper.GetFillData(sql);
        }

       
        //查找具体某个用户的创作
        public static DataTable wdwrite(int user_id)
        {
            string sql = "select wri_id,wri_name,wri_mess,wri_image,wri_time,user_name from Write,Users where wr_user_id=user_id and wr_user_id='" + user_id + "' order by wri_time desc";
                return DBHelper.GetFillData(sql);
        }
       //查看。。。好像没有用到
        public static DataTable Swriid(int wriid)
        {
            string sql = "select * from Write where wri_id=@wri_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@wri_id",wriid)
            };
            return DBHelper.GetFillData(sql, sp);
        }

        //显示最新的十个创作
        public static DataTable top10write()
        {
            string sql = "select top 10 *from Write order by wri_time desc";
            return DBHelper.GetFillData(sql);
        }

        //根据用户id删除创作
        public static int deletwri(int user_id)
        {
            string sql = "delete from Write where wr_user_id='" + user_id + "'";
            return DBHelper.GetExcuteNonQuery(sql);
        }

        //管理员查看所有创作信息
        public static DataTable allwrite()
        {
            string sql = "select wri_id,wr_user_id,wri_name,wri_mess,wri_image,wri_time,user_id,user_name from Write,Users where wr_user_id=user_id";
            return DBHelper.GetFillData(sql);
        }
        //删除创作
        public static int delete(string wriname)
        {
            string sql = "delete Write where wri_name=@wri_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@wri_name",wriname)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }


    }
}
