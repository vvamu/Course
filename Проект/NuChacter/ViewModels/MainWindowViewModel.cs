using NuCharacter.ViewModels.Base;
using NuCharacter.Infrastrucure.Commands;


namespace NuCharacter.ViewModels
{
    internal partial class MainWindowViewModel : ViewModel
    {
        public MainWindowViewModel()
        {
            Refresh();

            //System.Globalization.CultureInfo currLang = App.Language;
            //Lang = new LambdaCommand(OnLang, CanLang);

            #region Commands

            CreateCharacter = new LambdaCommand(OnCreateCharacter, CanCreateCharacter);
            RemoveCharacter = new LambdaCommand(OnRemoveCharacter, CanRemoveCharacter);

            Click_AllGroups = new LambdaCommand(OnClick_AllGroups, CanClick_AllGroups);

            CreateGroup = new LambdaCommand(OnCreateGroup, CanCreateGroup);
            RemoveGroup = new LambdaCommand(OnRemoveGroup, CanRemoveGroup);

            #endregion

            
        }

       

    }

    
}
