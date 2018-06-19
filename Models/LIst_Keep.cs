using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class List_Keep
    {
        private int Lk_id;
        private int Lk_user_id;
        private string Lk_list_name;
        private DateTime Lk_time;

        public int Lk_id1
        {
            get { return this.Lk_id; }
            set { this.Lk_id = value; }
        }
        public int Lk_user_id1
        {
            get { return this.Lk_user_id; }
            set { this.Lk_user_id = value; }
        }
        public string Lk_list_name1
        {
            get { return this.Lk_list_name; }
            set { this.Lk_list_name = value; }
        }
        public DateTime Lk_time1
        {
            get { return this.Lk_time; }
            set { this.Lk_time = value; }
        }
    }
}
