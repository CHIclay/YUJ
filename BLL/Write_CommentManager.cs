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
    public class Write_CommentManager
    {
        //用户添加创作评论
        public static int write_comment(Write_Comment wc)
        {
            return Write_CommentService.write_comment(wc);
        }
        //用户查看创作评论
        public static DataTable plwri(int write_id)
        {
            return Write_CommentService.plwri(write_id);
        }

        

        //查看所有创作评论
        public static DataTable allwc()
        {
            return Write_CommentService.allwc();
        }
        //管理员删除创作评论
        public static int delete(string wcid)
        {
            return Write_CommentService.delete(wcid);
        }

    }
}
