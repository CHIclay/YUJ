using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Book
    {
        private int Book_id;
        private string Book_name;
        private string Book_mess;
        private string Book_image;
        private string Book_type;
        private DateTime Book_time;
        private string Book_intr;

        public int Book_id1
        {
            get { return Book_id; }
            set { Book_id = value; }
        }
        public string Book_name1
        {
            get { return Book_name; }
            set { Book_name = value; }
        }
        public string Book_mess1
        {
            get { return Book_mess; }
            set { Book_mess = value; }
        }
        public string Book_image1
        {
            get { return Book_image; }
            set { Book_image = value; }
        }
        public string Book_type1
        {
            get { return Book_type; }
            set { Book_type = value; }
        }
        public DateTime Book_time1
        {
            get { return Book_time; }
            set { Book_time = value; }
        }
        public string Book_intr1
        {
            get { return Book_intr; }
            set { Book_intr = value; }
        }
    }
}
