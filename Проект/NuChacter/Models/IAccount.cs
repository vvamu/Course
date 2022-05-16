using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NuCharacter.Models.Interfaces
{
    public enum TypeAccount
    {
        Administrator,
        User
    }
    public abstract class Account
    {
         public int ID_User { get; set; } 
         public string UserName { get; set; }
         public string Password { get; set; }
         public string Login { get; set; }
         
    }
}
