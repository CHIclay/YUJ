using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Book_Comment
    {
        private int Bc_id;
        private int Us_User_id;
        private int Bk_Book_id;
        private string Bc_mess;
        private DateTime Bc_time;

        public int Bc_id1
        {
            get { return this.Bc_id; }
            set { this.Bc_id = value; }
        }

        public int Us_User_id1
        {
            get { return this.Us_User_id; }
            set { this.Us_User_id = value; }
        }

        public int Bk_Book_id1
        {
            get { return this.Bk_Book_id; }
            set { this.Bk_Book_id = value; }
        }

        public string Bc_mess1
        {
            get { return this.Bc_mess; }
            set { this.Bc_mess = value; }
        }

        public DateTime Bc_time1
        {
            get { return this.Bc_time; }
            set { this.Bc_time = value; }
        }
    }
}
