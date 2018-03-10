using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineMobileShop.EntityLayer
{
    public class User1
    {
        public string UserID { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string BirthDate { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Country { get; set; }
        public string ZIP { get; set; }
        public string Addres { get; set; }
        public string Phone { get; set; }
        public string Sec_Question { get; set; }
        public string Answer { get; set; }
        public string Priviladge { get; set; }
        public int Posts { get; set; }
        public string JoinDate { get; set; }

        public char UserType { get; set; }

    }
}
