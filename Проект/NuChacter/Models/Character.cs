using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace NuCharacter.Models
{
    public class Character
    {
        [PrimaryKey, AutoIncrement]
        public int Id_Character { get; set; }

        
        public string Name { get ; set;  }
        public int Age { get; set; }
        public string DateBirth { get; set; }
        public DateTime DateCreated { get; set; }
        public string ImagePath { get ; set; }

        
        public int Id_Group { get; set; }

        #region Constructors
        public Character() 
        {
            DateCreated = DateTime.Now;
        }

        #endregion
    }
}
