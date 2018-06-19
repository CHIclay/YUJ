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
    public class ManagerService
    {
        //管理员登录
        public static SqlDataReader Admin_Login(string name,string pwd)
        {
            string sql = "select * from Manager where Mana_name=@mana_name and Mana_pwd=@mana_pwd";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@mana_name",name),
                new SqlParameter("@mana_pwd",pwd),
            };
            return DBHelper.GetDataReader(sql, sp);
        }
        
        //添加管理员
        public static int Admin_Insert(Manager mg)
        {
            string sql = "insert into Manager(Mana_name,Mana_pwd) values(@mana_name,@mana_pwd)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@mana_name",mg.Mana_name1),
                new SqlParameter("@mana_pwd",mg.Mana_pwd1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
    }
}
