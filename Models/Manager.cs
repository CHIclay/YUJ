using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Manager
    {
        private int Mana_id;
        private string Mana_name;
        private string Mana_pwd;

        public int Mana_id1
        {
            get { return this.Mana_id; }
            set { this.Mana_id = value; }
        }
        public string Mana_name1
        {
            get { return this.Mana_name; }
            set { this.Mana_name = value; }
        }
        public string Mana_pwd1
        {
            get { return this.Mana_pwd; }
            set { this.Mana_pwd = value; }
        }
    }
}
