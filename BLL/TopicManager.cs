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
    public class TopicManager
    {
        //查看所有的帖子
        public static DataTable alltop()
        {
            return TopicService.alltop();
        }
        //查看传统文学类型的帖子
        public static DataTable topctwx()
        {
            return TopicService.topctwx();
        }
        //查看现代网文类型的帖子
        public static DataTable topxdww()
        {
            return TopicService.topxdww();
        }
        //查看未来科幻类型的帖子
        public static DataTable topwlkh()
        {
            return TopicService.topwlkh();
        }
        //查看青春小说类型的帖子
        public static DataTable topqcxs()
        {
            return TopicService.topqcxs();
        }
        //用户发帖
        public static int addht(Topic topic)
        {
            return TopicService.addht(topic);
        }
        //查看话题的详细信息
        public static DataTable Stopid(int topid)
        {
            return TopicService.Stopid(topid);
        }

        ////显示最新的5个话题
        public static DataTable top5()
        {
            return TopicService.top5();
        }
        //查看所有帖子的信息
        public static DataTable alltopic()
        {
            return TopicService.alltopic();
        }

        //删除帖子
        public static int delete(string topname)
        {
            return TopicService.delete(topname);
        }

        //模糊查询帖子
        
        public static DataTable selectkeys(string keys)
        {
            return TopicService.selectkeys(keys);
        }




    }
}
