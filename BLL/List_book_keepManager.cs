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
    public class List_book_keepManager
    {
        //查看书单中具体图书信息
        public static DataTable listtushu(string list1_name)
        {
            return List_book_keepService.listtushu(list1_name);
        }
       //将图书添加进入书单
        public static int sctuchu(List_book_keep lbk)
        {
            return List_book_keepService.sctushu(lbk);
        }
        //删除书单中的某一本图书
        public static int delete(string listbookkeepid)
        {
            return List_book_keepService.delete(listbookkeepid);
        }
        //管理员查看书单中具体图书信息
        public static SqlDataReader listtushu1(string listbookkeepid)
        {
            return List_book_keepService.listtushu1(listbookkeepid);
        }
    }
}
