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
    public class List1Service
    {
        //查看书单具体
        public static DataTable listmess(string list1_name)
        {
            string sql = "select list1_name,list1_image,list1_mess,list1_time,user_name from List1,Users where list1_user_id=user_id  and list1_name=@list1_name";
            SqlParameter[] sp = new SqlParameter[]
          {
                new SqlParameter("@list1_name",list1_name)
          };
            return DBHelper.GetFillData(sql, sp);
           
        }
        //查找所有书单
        public static DataTable alllist()
        {
            string sql = "select * from List1 order by list1_time desc";
            return DBHelper.GetFillData(sql);
        }
        //用户创建书单
        public static int listtianjia(List1 list1)
        {
            string sql = "insert into List1(List1_user_id,List1_name,List1_mess,List1_image,List1_time) values(@list1_user_id,@list1_name,@list1_mess,@list1_image,@list1_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@list1_user_id",list1.List1_user_id1),
                new SqlParameter("@list1_name",list1.List1_name1),
                new SqlParameter("@list1_mess",list1.List1_mess1),
                new SqlParameter("@list1_image",list1.List1_image1),
                new SqlParameter("@list1_time",list1.List1_time1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //用户查看自己创建的书单
        public static DataTable mylist(int list1_user_id)
        {
            string sql = "select * from List1 where list1_user_id= '" + list1_user_id + "' order by list1_time desc";
            return DBHelper.GetFillData(sql);
        }
        
        //显示最新创建的六个书单
        public static DataTable top6list()
        {
            string sql = "select top 6 *from List1 order by list1_time desc";
            return DBHelper.GetFillData(sql);
        }

       
        //管理员查看所有书单
        public static DataTable alllist1()
        {
            string sql = "select list1_id,list1_user_id,list1_name,list1_mess,list1_image,list1_time,user_id,user_name from List1,Users where list1_user_id=user_id";
            return DBHelper.GetFillData(sql);
        }

        //删除书单
        public static int delete(string list1id)
        {
            string sql = "delete List1 where list1_id=@list1_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@list1_id", list1id)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
      

    }
}
