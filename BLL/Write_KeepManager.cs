using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAL;
using Models;
namespace BLL
{
    public class Write_KeepManager
    {
        //用户收藏他人创作
       
        public static int scchuangzuo(Write_Keep wk)
        {
            return Write_KeepService.scchuangzuo(wk);
        }

        //用户查看自己收藏的他人的创作
        public static DataTable ckshoucang(int user_id)
        {
            return Write_KeepService.ckshoucang(user_id);
        }
        //用户删除自己收藏的他人创作
        public static int delete(string writekeep)
        {
            return Write_KeepService.delete(writekeep);
        }
    }
}
