using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Topic
    {
        private int Top_id;
        private int Us_user_id;
        private string Top_name;
        private string Top_mess;
        private string Top_image;
        private string Top_type;
        private DateTime Top_time;

        public int Top_id1
        {
            get { return this.Top_id; }
            set { this.Top_id = value; }
        }
        public int Us_user_id1
        {
            get { return this.Us_user_id; }
            set { this.Us_user_id = value; }
        }
        public string Top_name1
        {
            get { return this.Top_name; }
            set { this.Top_name = value; }
        }
        public string Top_mess1
        {
            get { return this.Top_mess; }
            set { this.Top_mess = value; }
        }
        public string Top_image1
        {
            get { return this.Top_image; }
            set { this.Top_image = value; }
        }
        public string Top_type1
        {
            get { return this.Top_type; }
            set { this.Top_type = value; }
        }
        public DateTime Top_time1
        {
            get { return this.Top_time; }
            set { this.Top_time = value; }
        }

    }
}
