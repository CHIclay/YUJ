using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class List1
    {
        private int List1_id;
        private int List1_user_id;
        private string List1_name;
        //private int List_book_id;
        private string List1_mess;
        private string List1_image;
        private DateTime List1_time;

        public int List1_id1
        {
            get { return this.List1_id; }
            set { this.List1_id = value; }
        }
        public int List1_user_id1
        {
            get { return this.List1_user_id; }
            set { this.List1_user_id = value; }
        }
        public string List1_name1
        {
            get { return this.List1_name; }
            set { this.List1_name = value; }
        }
        //public int List_book_id1
        //{
        //    get { return this.List_book_id; }
        //    set { this.List_book_id = value; }
        //}
        public string List1_mess1
        {
            get { return this.List1_mess; }
            set { this.List1_mess = value; }
        }
        public string List1_image1
        {
            get { return this.List1_image; }
            set { this.List1_image = value; }
        }
        public DateTime List1_time1
        {
            get { return this.List1_time; }
            set { this.List1_time = value; }
        }
    }
}
