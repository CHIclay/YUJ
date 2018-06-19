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
    public class BookService
    {
        //查看图书具体界面
        public static SqlDataReader Idselect(int ID)
        {
            string sql = "select * from Book where book_id=@book_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_id",ID)
            };
            return DBHelper.GetDataReader(sql, sp);
        }

        
        //查看所有图书
        public static DataTable all()
        {
            string sql = "select * from Book";
            return DBHelper.GetFillData(sql);
        }

        //查看国学经典类型的图书
        public static DataTable guoxue()
        {
            string sql = "select * from Book where book_type='国学经典'";
            return DBHelper.GetFillData(sql);
        }

        //查看外国名著类型的图书
        public static DataTable waiguo()
        {
            string sql = "select * from Book where book_type='外国名著'";
            return DBHelper.GetFillData(sql);
        }

        //查看诗歌散文类型的图书
        public static DataTable shige()
        {
            string sql = "select * from Book where book_type='诗歌散文'";
            return DBHelper.GetFillData(sql);
        }

        //查看民国大师类型的图书
        public static DataTable minguo()
        {
            string sql = "select * from Book where book_type='民国大师'";
            return DBHelper.GetFillData(sql);
        }

        //查看现代文学类型的图书
        public static DataTable xiandai()
        {
            string sql = "select * from Book where book_type='现代文学'";
            return DBHelper.GetFillData(sql);
        }

        //查看网络小说类型的图书
        public static DataTable wangluo()
        {
            string sql = "select * from Book where book_type='网络小说'";
            return DBHelper.GetFillData(sql);
        }


        //通过页面回传的book_id获取图书的所有信息
        public static DataTable itt(int ID)
        {
            string sql = "select * from Book where book_id=@book_id";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_id",ID)
            };
            return DBHelper.GetFillData(sql, sp);
        }

        //书单收藏dropdownlist下拉选项
        public static DataTable listbook(int user_id)
        {
            string sql = "select list1_name from List1,Users where list1_user_id=user_id and user_id='" + user_id + "'";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("user_id",user_id)
            };
            return DBHelper.GetFillData(sql, sp);
        }

        //查询最新的八本图书
        public static DataTable top8book()
        {
            string sql = "select top 8 *from Book order by book_time desc";
            return DBHelper.GetFillData(sql);
        }

        //删除图书
        public static int delete(string bookname)
        {
            string sql = "delete Book where book_name=@book_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_name",bookname)
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }
  
        //添加图书
        public static int insert(Book bk)
        {
            string sql = "insert into Book(Book_name,Book_mess,Book_image,Book_type,Book_time,Book_intr) values(@book_name,@book_mess,@book_image,@book_type,@book_time,@book_intr)";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_name",bk.Book_name1),
                new SqlParameter("@book_mess",bk.Book_mess1),
                new SqlParameter("@book_image",bk.Book_image1),
                new SqlParameter("@book_type",bk.Book_type1),
                new SqlParameter("@book_time",bk.Book_time1),
                new SqlParameter("@book_intr",bk.Book_intr1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        
        //修改图书
        public static int update(Book book)
        {
            string sql = "update Book set Book_name=@book_name,Book_mess=@book_mess,Book_image=@book_image,Book_type=@book_type,Book_intr=@book_intr";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_name",book.Book_name1),
                new SqlParameter("@book_mess",book.Book_mess1),
                new SqlParameter("@book_image",book.Book_image1),
                new SqlParameter("@book_type",book.Book_type1), 
                new SqlParameter("@book_intr",book.Book_intr1),
            };
            return DBHelper.GetExcuteNonQuery(sql, sp);
        }

        
        //查看所有图书的信息
        public static DataTable allbook()
        {
            string sql = "select * from Book";
            return DBHelper.GetFillData(sql);
        }

       

        //模糊搜索图书
        public static DataTable mohuselect(string bookname)
        {
            string sql = "select * from Book where book_name like '%" + bookname + "%'";
            return DBHelper.GetFillData(sql);
        }

     
        //查询图书信息
        public static SqlDataReader select(string bookname)
        {
            string sql = "select * from Book where Book_name=@book_name";
            SqlParameter[] sp = new SqlParameter[]
            {
                new SqlParameter("@book_name",bookname)
            };
            return DBHelper.GetDataReader(sql, sp);
        }


    }
}
