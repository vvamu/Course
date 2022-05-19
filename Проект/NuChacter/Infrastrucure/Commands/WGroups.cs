using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Windows.Input;
using NuCharacter.DataBase;
using NuCharacter.Models;

namespace NuCharacter.ViewModels
{
    internal partial class MainWindowViewModel
    {

        private static ObservableCollection<Group> _All_Groups;
        public ObservableCollection<Group> All_Groups { get => _All_Groups ?? new ObservableCollection<Group>(); set => SetProperty(ref _All_Groups, value); }


        #region Selected Group

        bool xxxx = false;

        private Group _SelectedGroup;
        public Group SelectedGroup
        {
            get => _SelectedGroup;
            set
            {
                SetProperty(ref _SelectedGroup, value);
                OnPropertyChanged("All_Groups");
                OnPropertyChanged("SelectedGroup");
                OnPropertyChanged("_SelectedGroup");



                if (xxxx == false)
                {
                    xxxx = true;
                    Refresh(SelectedGroup);
                    xxxx = false;

                }

            }
        }

        #endregion

        public int gr_ID(Group gr) => gr.Id_Group;

        public ICommand Click_AllGroups { get; }
        private bool CanClick_AllGroups(object obj) => true;
        private void OnClick_AllGroups(object obj)
        {

            SelectedGroup = null;
            //All_Groups = Local_DB.SelectAll<Group>();
            All_Characters.Clear();
            All_Characters = Local_DB.SelectAll<Character>();
            OnPropertyChanged("All_Characters");


        }

        #region Create Group
        public ICommand CreateGroup { get; }
        private bool CanCreateGroup(object obj) => true;
        private void OnCreateGroup(object obj)
        {
            var new_group = new Group();

            Local_DB.Insert(new_group);
            new_group.Name = "Group" + new_group.Id_Group;
            Local_DB.Update(new_group);

            Refresh();

        }

        #endregion

        #region Remove Group

        public ICommand RemoveGroup { get; }
        private bool CanRemoveGroup(object obj) => obj is Group group && All_Groups.Contains(group);

        private void OnRemoveGroup(object obj)
        {
            var group = obj as Group;

            Local_DB.Remove(group);

            Refresh();
        }


        #endregion


        public void Refresh(Group group = null)
        {

            if (!(group == null))
            {
                All_Characters.Clear();
                var a = Local_DB.SelectAll<Character>().Where(x => x.Id_Group == gr_ID(group));
                All_Characters = new ObservableCollection<Character>(a);
                OnPropertyChanged("All_Characters");

            }
            else
            {
                All_Groups.Clear();
                All_Groups = Local_DB.SelectAll<Group>();
                OnPropertyChanged("All_Groups");
            }
        }
    }
}
