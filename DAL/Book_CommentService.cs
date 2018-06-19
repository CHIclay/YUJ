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
    public class Book_CommentService
    {
        //用户评论图书
        public static int book_comment(Book_Comment bc)
        {
            string sql = "insert into Book_Comment(Us_User_id,Bk_Book_id,Bc_mess,Bc_time) values(@us_user_id,@bk_book_id,@bc_mess,@bc_time)";
            SqlParameter[] sp = new SqlParameter[]
            {
          
                new SqlParameter("@us_user_id",bc.Us_User_id1),
                new SqlParameter("@bk_book_id",bc.Bk_Book_id1),
                new SqlParameter("@bc_mess",bc.Bc_mess1),
                new SqlParameter("@bc_time",bc.Bc_time1),

            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
       

        //查看图书评论信息
        public static DataTable plxs(int book_id)
        {
            string sql = "select bk_book_id,bc_id,bc_mess,bc_time,user_name,book_id from Book_Comment,Users,Book where us_user_id=user_id and bk_book_id=book_id and book_id='"+book_id+"' order by bc_time desc";
            return DBHelper.GetFillData(sql);
        }

        //管理员查看图书评论信息
        public static DataTable admin_ck()
        {
            string sql = "select bc_id,us_user_id,bk_book_id,user_id,user_name,book_id,book_name,bc_mess,bc_time from Users,Book,Book_Comment where user_id=us_user_id and book_id=bk_book_id order by bc_time desc";
            return DBHelper.GetFillData(sql);
        }

       

        //删除图书评论
        public static int delete(string bcid)
        {
            string sql = "delete Book_Comment where bc_id=@bc_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@bc_id",bcid)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

    }

   
}
