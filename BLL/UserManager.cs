using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;
using System.Data.SqlClient;
using DAL;
 

namespace BLL
{
    public class UserManager
    {

        //添加用户、用户注册
        public static int AddUser(Users us)
        {
            return UserService.Insert(us);
        }
        //用户登录
        public static SqlDataReader Login(string name,string pwd)
        {
            return UserService.Login(name, pwd);
        }
        //查询所有用户的信息
        public static DataTable alluser()
        {
            return UserService.alluser();
        }
        //修改用户信息
        public static int update(Users users)
        {
            return UserService.update(users);
        }
        //删除用户信息
        public static int delete(string username)
        {
            return UserService.delete(username);
        }
        //查询用户信息
        public static SqlDataReader select(string name)
        {
            return UserService.select(name);
        }
    }
}
