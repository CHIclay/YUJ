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
    public class Topic_CommentManager
    {


      
        //用户输入话题评论
        public static int topic_comment(Topic_Comment tc)
        {
            return Topic_CommentService.topic_comment(tc);
        }
        //用户查看话题评论
        public static DataTable pltop(int topic_id)
        {
            return Topic_CommentService.pltop(topic_id);
        }

        //管理员查看话题评论信息
        public static DataTable admin_tc()
        {
            return Topic_CommentService.admin_tc();
        }
        //删除话题评论
        public static int delete(string tcid)
        {
            return Topic_CommentService.delete(tcid);
        }
    }
}
