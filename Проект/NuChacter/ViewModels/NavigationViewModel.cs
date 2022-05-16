using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using NuCharacter.ViewModels.Base;

namespace NuCharacter.Infrastrucure
{
    class NavigationViewModel : ViewModel
    {
        private static CollectionViewSource MenuItemsCollection;
        public ICollectionView SourceCollection => MenuItemsCollection.View;

        public class MenuItems
        {
            public string MenuName { get; set; }
            public string MenuImage { get; set; }
        }

        static NavigationViewModel()
        {
            ObservableCollection<MenuItems> menuItems = new ObservableCollection<MenuItems>
            {
                new MenuItems { MenuName = "Main Info"},
                new MenuItems { MenuName = "View"}
            };

            MenuItemsCollection = new CollectionViewSource { Source = menuItems };
            //MenuItemsCollection.Filter += MenuItems_Filter;

        }

        private static object _selectedViewModel;
        public object SelectedViewModel
        {
            get => _selectedViewModel;
            set => SetProperty(ref _selectedViewModel, value);
        }

        // Switch Views
        public void SwitchViews(object param)
        {
            switch (param)
            {
                case "Main Info":
                    SelectedViewModel = null;
                    break;

            }
        }
    }
}