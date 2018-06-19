using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Write_Keep
    {
        private int Wk_id;
        private int Wk_user_id;
        private int Wk_wri_id;
        private DateTime Wk_time;
        
        public int Wk_id1
        {
            get { return this.Wk_id; }
            set { this.Wk_id = value; }
        }
        public int Wk_user_id1
        {
            get { return this.Wk_user_id; }
            set { this.Wk_user_id = value; }
        }
        public int Wk_wri_id1
        {
            get { return this.Wk_wri_id; }
            set { this.Wk_wri_id = value; }
        }
        public DateTime Wk_time1
        {
            get { return this.Wk_time; }
            set { this.Wk_time = value; }
        }
    }
}
