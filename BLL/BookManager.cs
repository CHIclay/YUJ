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
    public class BookManager
    {
        //查看图书具体界面
        public static SqlDataReader IDselcet(int ID)
        {
            return BookService.Idselect(ID);
        }

        //查看所有图书
        public static DataTable all()
        {
            return BookService.all();
        }

        //查看国学经典类型的图书
        public static DataTable guoxue()
        {
            return BookService.guoxue();
        }
       


        //查看外国名著类型的图书
        public static DataTable waiguo()
        {
            return BookService.waiguo();
        }

        //查看诗歌散文类型的图书
        public static DataTable shige()
        {
            return BookService.shige();
        }

        //查看民国大师类型的图书
        public static DataTable minguo()
        {
            return BookService.minguo();
        }

        //查看现代文学类型的图书
        public static DataTable xiandai()
        {
            return BookService.xiandai();
        }

        //查看网络小说类型的图书
        public static DataTable wangluo()
        {
            return BookService.wangluo();
        }







        //通过页面回传的book_id获取图书的所有信息
        public static DataTable Itt(int ID)
        {
            return BookService.itt(ID);
        }

        //书单收藏dropdownlist下拉选项
        public static DataTable listbook(int user_id)
        {
            return BookService.listbook(user_id);
        }

        ////查询最新的八本图书
        public static DataTable top8book()
        {
            return BookService.top8book();
        }


        //删除图书
        public static int delete(string bookname)

        {
            return BookService.delete(bookname);
        }

        //添加图书
        public static int insert(Book bk)
        {
            return BookService.insert(bk);
        }

       
        //修改图书信息
        public static int update(Book book)
        {
            return BookService.update(book);
        }

        //查看所有图书的信息
       
        public static DataTable allbook()
        {
            return BookService.allbook();
        }

        

        //模糊搜索
        public static DataTable mohuselect(string bookname)
        {
            return BookService.mohuselect(bookname);
        }

        //查询图书信息
        public static SqlDataReader select(string bookname)
        {
            return BookService.select(bookname);
        }
        

    }
}
