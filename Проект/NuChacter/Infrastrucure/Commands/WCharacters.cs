using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using NuCharacter.DataBase;
using NuCharacter.Models;

namespace NuCharacter.ViewModels
{
    internal partial class MainWindowViewModel 
    {

        private List<Character> _All_Characters;
        public List<Character> All_Characters { get => _All_Characters ?? new List<Character>(); set { _All_Characters = value; } }

        #region Selected Character

        private Character _SelectedCharacter;
        public Character SelectedCharacter
        {
            get => _SelectedCharacter;
            set
            {
                SetProperty(ref _SelectedCharacter, value);
            }
        }
        #endregion

        #region Create Char
        public ICommand CreateCharacter { get; }
        private bool CanCreateCharacter(object obj) => obj is Group group && group == SelectedGroup && obj != null;
        private void OnCreateCharacter(object obj)
        {
            var group = obj as Group;

            var new_character = new Character();
            
            Local_DB.Insert(new_character);
            new_character.Id_Group = gr_ID(group);
            new_character.Name = $"Character {All_Characters.Count}";
            Local_DB.Update(new_character);

            Refresh(group);

        }
        #endregion

        #region Remove Char
        public ICommand RemoveCharacter { get; }
        private bool CanRemoveCharacter(object obj) => true;
        private void OnRemoveCharacter(object obj)
        {
            if (!(obj is Character character)) return;

            //SelectedGroup.Characters.Remove(SelectedCharacter);
        }
        #endregion

    }
}
