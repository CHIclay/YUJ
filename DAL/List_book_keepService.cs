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
    public class List_book_keepService
    {
        //查看书单中的具体图书信息
        public static DataTable listtushu(string list1_name)
        {
            string sql = "select book_name,book_intr,book_mess,book_image,list1_name,list_book_keep_id from Book,List1,List_book_keep where lbk_list_name='" + list1_name + "' and lbk_book_id=book_id and lbk_list_name=list1_name ";
            return DBHelper.GetFillData(sql);
        }
        
        //添加图书进入书单
        public static int sctushu(List_book_keep lbk)
        {
            string sql = "insert into List_book_keep(Lbk_list_name,Lbk_book_id) values(@lbk_list_name,@lbk_book_id)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@lbk_list_name",lbk.Lbk_list_name1),
                new SqlParameter("@lbk_book_id",lbk.Lbk_book_id1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
        //管理员查看书单中的具体图书信息

        
        public static SqlDataReader listtushu1(string listbookkeepid)
        {
            string sql = "select book_name,book_intr,book_mess,book_image,list1_name,list_book_keep_id from Book,List1,List_book_keep where  lbk_book_id=book_id and lbk_list_name=list1_name and list_book_keep_id=@list_book_keep_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@list_book_keep_id",listbookkeepid)
            };
            return DBHelper.GetDataReader(sql,sp);
        }
        //删除书单中的某一图书
        public static int delete(string listbookkeepid)
        {
            string sql = "delete List_book_keep where list_book_keep_id=@list_book_keep_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@list_book_keep_id",listbookkeepid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
      
      


    }
}
