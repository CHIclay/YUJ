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
    public class Book_CommentManager
    {
        //会员发表图书评论
        public static int book_comment(Book_Comment bc)
        {
            return Book_CommentService.book_comment(bc);
        }

        //会员查看图书评论
        public static DataTable plxs(int book_id)
        {
            return Book_CommentService.plxs(book_id);
        }

        //管理员查看图书评论信息
        public static DataTable admin_ck()
        {
            return Book_CommentService.admin_ck();
        }

        //删除图书评论
        public static int delete(string bcid)
        {
            return Book_CommentService.delete(bcid);
        }


    }
}
