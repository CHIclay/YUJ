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
    public class WriteManager
    {

       //添加创作
        public static int addwri(Write write)
        {
            return WriteService.addwri(write);
        }
      //查看所有创作
        public static DataTable allwri()
        {
            return WriteService.allwri();
        }
       //用户查看我的创作
        public static DataTable wdwrite(int user_id)
        {
            return WriteService.wdwrite(user_id);
        }
       //好像没有用到的一个方法
        public static DataTable Swirid(int wriid)
        {
            return WriteService.Swriid(wriid);
        }

        ////显示最新的十个创作
        public static DataTable top10write()
        {
            return WriteService.top10write();
        }

        ////根据用户id删除创作
        public static int deletwri(int user_id)
        {
            return WriteService.deletwri(user_id);
        }

        
        //查看所有创做的信息
        public static DataTable allwrite()
        {
            return WriteService.allwrite();
        }

        //管理员删除创作
        public static int delete(string wriname)
        {
            return WriteService.delete(wriname);
        }
    }
}
