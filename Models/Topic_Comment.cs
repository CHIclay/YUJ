using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Topic_Comment
    {
        private int Bc_id;
        private int Tc_user_id;
        private int Tc_top_id;
        private string Tc_mess;
        private DateTime Tc_time;

        public int Bc_id1
        {
            get { return this.Bc_id; }
            set { this.Bc_id = value; }
        }
        public int Tc_user_id1
        {
            get { return this.Tc_user_id; }
            set { this.Tc_user_id = value; }
        }
        public int Tc_top_id1
        {
            get { return this.Tc_top_id; }
            set { this.Tc_top_id = value; }
        }
        public string Tc_mess1
        {
            get { return this.Tc_mess; }
            set { this.Tc_mess = value; }
        }
        public DateTime Tc_time1
        {
            get { return this.Tc_time; }
            set { this.Tc_time = value; }
        }


    }
}
