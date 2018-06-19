using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Users
    {
         
        private string User_name;
        private string User_pwd;
        private string User_email;
        private string User_phone;
        private string User_sex;
        //private string User_id;
        

      
        public string User_name1
        {
            get { return this.User_name; }
            set { this.User_name=value; }
        }
        public string User_pwd1
        {
            get { return this.User_pwd; }
            set { this.User_pwd = value; }
        }
        public string User_email1
        {
            get { return this.User_email; }
            set { this.User_email = value; }
        }
        public string User_phone1
        {
            get { return this.User_phone; }
            set { this.User_phone = value; }
        }
        public string User_sex1
        {
            get { return this.User_sex; }
            set { this.User_sex = value; }
        }
        //private string User_id1
        //{
        //    get { return this.User_id; }
        //    set { this.User_id = value; }

        //}
         
        
    }
}
