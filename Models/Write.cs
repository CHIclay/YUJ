using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Write
    {
        private int Wri_id;
        private int Wr_user_id;
        private string Wri_name;
        private string Wri_mess;
        private string Wri_image;
        private DateTime Wri_time;

        public int Wri_id1
        {
            get { return this.Wri_id; }
            set { this.Wri_id = value; }
        }
        public int Wr_user_id1
        {
            get { return this.Wr_user_id; }
            set { this.Wr_user_id = value; }
        }
        public string Wri_name1
        {
            get { return this.Wri_name; }
            set { this.Wri_name = value; }
        }
        public string Wri_mess1
        {
            get { return this.Wri_mess; }
            set { this.Wri_mess = value; }
        }
        public string Wri_image1
        {
            get { return this.Wri_image; }
            set { this.Wri_image = value; }
        }
        public DateTime Wri_time1
        {
            get { return this.Wri_time; }
            set { this.Wri_time = value; }
        }

    }
}
