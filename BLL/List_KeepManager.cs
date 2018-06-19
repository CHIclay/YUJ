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
    public class List_KeepManager
    {
        //用户收藏他人书单

        public static int scshudan(List_Keep lk)
        {
            return List_KeepService.scshudan(lk);
        }

        //用户查看自己收藏的他人的书单
        public static DataTable ckshoucang(int user_id)
        {
            return List_KeepService.ckshoucang(user_id);
        }

        //管理员删除书单收藏
        public static int delete(string listkeep)
        {
            return List_KeepService.delete(listkeep);
        }
        
    }
}
