using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class List_book_keep
    {
        private string List_book_keep_id;
        private string Lbk_list_name;
        private int Lbk_book_id;

        public string List_book_keep_id1
        {
            get { return this.List_book_keep_id; }
            set { this.List_book_keep_id = value; }
        }
        public string Lbk_list_name1
        {
            get { return this.Lbk_list_name; }
            set { this.Lbk_list_name = value; }
        }
        public int Lbk_book_id1
        {
            get { return this.Lbk_book_id; }
            set { this.Lbk_book_id = value; }
        }
    }
}
