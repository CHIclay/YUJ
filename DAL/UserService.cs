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
    public class UserService
    {
        //添加用户
        public static int Insert(Users us)
        {
            string sql = "insert into Users(User_name,User_pwd,User_email,User_phone,User_sex) values(@user_name,@user_pwd,@user_email,@user_phone,@user_sex)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@user_name",us.User_name1),
                new SqlParameter("@user_pwd",us.User_pwd1),
                new SqlParameter("@user_email",us.User_email1),
                new SqlParameter("@user_phone",us.User_phone1),
                new SqlParameter("@user_sex",us.User_sex1),

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //用户登录
        public static SqlDataReader Login(string name,string pwd)
        {
            string sql = "select * from Users where User_name=@user_name and User_pwd=@user_pwd";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@user_name",name),
                new SqlParameter("@user_pwd",pwd),
            };
            return DBHelper.GetDataReader(sql, sp);
        }

        //删除用户
        public static int delete (string username)
        {
            string sql = "delete Users where User_name=@user_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@user_name",username)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //查看所有用户信息
        public static DataTable alluser()
        {
            string sql = "select * from Users";
            return DBHelper.GetFillData(sql);
        }

        //修改用户信息
        public static int update(Users users)
        {
            string sql = "update Users set User_name=@user_name,User_pwd=@user_pwd,User_email=@user_email,User_phone=@user_phone,User_sex=@user_sex";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@user_name",users.User_name1),
                new SqlParameter ("@user_pwd",users.User_pwd1),
                new SqlParameter("@user_email",users.User_email1),
                new SqlParameter("@user_phone",users.User_phone1),
                new SqlParameter("@user_sex",users.User_sex1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        //查询用户信息
        public static SqlDataReader select(string name)
        {
            string sql = "select * from Users where user_name=@user_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@user_name",name)
            };
            return DBHelper.GetDataReader(sql, sp);
        }

    }
}
