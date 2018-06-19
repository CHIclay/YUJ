using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Models;
using DAL;

namespace BLL
{
    public class ManagerManage
    {

        
        //管理员登录
        public static SqlDataReader Admin_Login(string name,string pwd)
        {
            return ManagerService.Admin_Login(name, pwd);
        }
        //管理员添加
        public static int AddManager(Manager mg)
        {
            return ManagerService.Admin_Insert(mg);
        }

    }
}
