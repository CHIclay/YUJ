using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Write_Comment
    {
        private int Wc_id;
        private int Wc_user_id;
        private int Wc_wri_id;
        private string Wc_mess;
        private DateTime Wc_time;

        public int Wc_id1
        {
            get { return this.Wc_id; }
            set { this.Wc_id = value; }
        }
        public int Wc_user_id1
        {
            get { return this.Wc_user_id; }
            set { this.Wc_user_id = value; }
        }
        public int Wc_wri_id1
        {
            get { return this.Wc_wri_id; }
            set { this.Wc_wri_id = value; }
        }
        public string  Wc_mess1
        {
            get { return this.Wc_mess; }
            set { this.Wc_mess = value; }
        }
        public DateTime Wc_time1
        {
            get { return this.Wc_time; }
            set { this.Wc_time = value; }
        }
    }
}
