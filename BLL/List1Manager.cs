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
    public class List1Manager
    {
     
        //查看所有书单
        public static DataTable alllist()
        {
            return List1Service.alllist();
        }
        //查看书单具体内容
        public static DataTable listmess(string Listname)
        {
            return List1Service.listmess(Listname);
        }
       //用户创建书单
        public static int listtianjia(List1 lt)
        {
            return List1Service.listtianjia(lt);
        }

        //用户查看自己创建的书单

        public static DataTable mylist(int list1_user_id)
        {
            return List1Service.mylist(list1_user_id);
        }

        ////显示最新创建的六个书单
        public static DataTable top6list()
        {
            return List1Service.top6list();
        }
        ////查看所有创做的信息
        //public static DataTable allwrite()
        //{
        //    return WriteService.allwrite();
        //}

        ////管理员删除创作
        //public static int delete(string wriname)
        //{
        //    return WriteService.delete(wriname);
        //}
        //查看所有书单
        public static DataTable alllist1()
        {
            return List1Service.alllist1();
        }
        //管理员删除书单
        public static int delete(string list1id)
        {
            return List1Service.delete(list1id);
        }
    }
}
