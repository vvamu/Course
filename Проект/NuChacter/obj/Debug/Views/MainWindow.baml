   M S B A M L   `   `   `  ����F  BNuCharacter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:NuCharacter.ViewModelsNuCharacter.ViewModels  5
   	   7 clr-namespace:NuCharacter.ModelsNuCharacter.Models  5   	       NuCharacter.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5   	   -vm$clr-namespace:NuCharacter.ViewModels  5
   	   ,model clr-namespace:NuCharacter.Models  5   	   S OHandyControl, Version=3.3.0.0, Culture=neutral, PublicKeyToken=45be8712787a1e5b0hc'https://handyorg.github.io/handycontrol  5   	     � Title$  NuCharacter��5   	   $	��830��5   	   $	��620��5   	   $
��1080��5   	   $	��900��5   	    � DataContext 5      0  *NuCharacter.ViewModels.MainWindowViewModel  5   
   .��5"      �  � ColumnDefinitions 5,   
   �� 5-      $	��70* �6   $	��190��6+   �� 5.      $	��67* �6   $	��210��6+   $	��260��6:   �� 5/      $
��auto �6   �� 50      $
��206* �6   .+�56   
   � $��0��6   $��2��6   $��0��63   
����  �$��2��6R    57      �� 58      $��3* �6#   �� 59      $��6* �6#   $	��210��6.   .+�5>      � $��0��6   ���#FFA9A9 � 	Resources 5?      "  FontAwesome.WPF.ImageAwesome �� 
TargetType �� Property �� Value��%�   '        �� 5@      "  6   .�5A      ��  � ��$ 17��62   �� 5B       � ��$ 17��63   �� 5C       � ��$ 10,0,0,0q�63   �� 5D       � ��$
 Left=�6@   5E      5F       � RowDefinitions 5H      �� 5I      $	��84* �6$   �� 5J      $	��38* �6$   �� 5K      $	��39* �6$   �� 5L      $	��60* �6$   �� 5M      $
��559* �6$   �� 5N      $	��47* �6$   .+�5Q      �� $��0��6    �� Orientation$ 
Horizontal=�6-   .+�5S      �� 
���   �$��60��60   $��60��6;   $��10,0,0,0q�6G   	 �� CornerRadius$	 2��6Y   ._�5T      �� ��5U      �� *SelectedCharacter.ImagePath+5W      �� 5Y      $
��Name��6    $��Center=�5Z      $
��Left=�5[      $��16��67   $��5,0,0,0q�6C   $��32��6T     5]      
   Icon$

 Edit=�6&   5^      �� 5`      $��Delete��6   $��1��5a      $��4,0,4,0q�5b      $��Stretch=�5c      $��30��67   ��5d      �� *RemoveGroup+��69   �� *SelectedGroup+�� 5f      $��Create��6   $��2��5g      $��4,0,4,0q�5h      $��Stretch=�5i      $��30��67   ��5j      �� *CreateGroup+�� 5l      $��3��6   $ Vertical=�5m      $
��Left=�5n      $��Center=�5o      $��10,0,0,0q�5p      .+�5q        $��0,0,0,7q�5r   !   $

 Star=�5s   !   �� 5v      $ 
Horizontal=�6!    J� InputBindings 5w      d� 5x       d� MouseAction$ 	LeftClicke�6+    �� Command 6C   �� *Click_AllGroups+.+�5z        $

 Home=�6*   $��0,0,10,0q�67   �� 5{      $��
All Groups��6$   5|      5}      �� 5�      $��4��5�      $��2��5�      
���iii���5�      �� *
All_Groups+ �� Mode$ TwoWay=� �� SelectedItem 5�      �� *SelectedGroup+��5�      �� 5�      .R�5�      �� .+�5�   "   �� $��Stretch=�6B   ��6(   �� *Name+6B   5�      5�      5�      5�      � 5�      $��1��6   ���#DA6969 5�      �� 5�      $	��60* �6$   �� 5�      $	��30* �6$   �� 5�      $��* �6$   �� 5�      $	��40* �6$   �� 5�      $
��610* �6$   .+�5�      �� $
��Left=�5�      $��0��67   $��Center=�5�      ��5�      �� *SelectedGroup.Name+5�      �� 5�      $��1��6   $��Center=�6@   $
��Left=�6[   $ 
Horizontal=�6v   ��6*   Z�  5�      !  FontAwesome.WPF.FontAwesome��%�   '        �� 5�      "  6    .�5�      ��  � ��$ 20��67   �� 5�       � ��$ 20��66   �� 5�       � ��$ 	10,0,10,0q�67   �� 5�       � �� �	#FFFBFFFF6;   �� 5�       � ��$ 20(�69   5�      5�      .+�5�      �� $��Count Characters: ��6    �� 5�      ��6    �� *SelectedGroup.Name+  5�         Icon$
 Plus=�6%    5�      d� 5�      $ 	LeftClicke�6+    6C   �� *CreateCharacter+ �� CommandParameter 6g   �� *SelectedGroup+5�        5�      $ Minus=�6%    5�      d� 5�      $ 	LeftClicke�6+    6C   �� *RemoveCharacter+ 6g   �� *SelectedCharacter+5�        5�      $
 Sort=�6%    5�      d� 5�      $ 	LeftClicke�6+    6C   �� *RemoveCharacter+ 6g   �� *SelectedCharacter+5�      5�      %  HandyControl.Controls.SearchBar  5�      $��3��5�      $��Center=�5      '  !HandyControl.Controls.InfoElement   Placeholder$ Search��5     $��Stretch=�5     $��	10,0,10,0q�64   ��5     �� *
FilterText+ �� UpdateSourceTrigger$ PropertyChanged=�5  4   � 5
     $��4��6   .+�5     �� ���#F5F3F3$��Visible=�5      �� SelectedIndex$ 0��5     $��0,3,0,0q�5     ��5     �� *All_Characters+ 5     �� *SelectedCharacter+ 5      �� Source�� 5     $/ )../Resources/DataTemplate/Ch_ListBox.xaml?�61   %    5     5     5     5     �� 5  
   $��2��6   $��5��6'   $y�Visible=�62   $��Stretch=�5      
���   �$��2��5!  *   � 5$  
   $��3��5%     $��0,0,0,0q�6   $��2��6.    5'     �� 5(     $
��119* �6    �� 5)     $
��695* �6    .+�5-     � $��0��6   ���	#FFBB4141$��Stretch=�5/      51     ��%X   '��       �� 52     " ��6   .�53     ��  � ��$ 20,0,0,0q�63   54     55     .+�57     #  HandyControl.Controls.TextBox  $��50(�59     $��Center=�5:     $
��Left=�5;      57     �� *SelectedCharacter.Name+��58     �� *SelectedCharacter.Name+��5<     Z� ��6.   Z� '  !HandyControl.Controls.SplitButton  5?     $��Right=�6!   $��30��6=   $��0,0,30,0q�6I   .��5@       $

 Gear=�6&      
Foreground
 ����� 5B     d� 5C     $ 	LeftCLicke�6+    6D   �� *Ch_Settings+ 6e   �� *SelectedCharacter+5E     5F     5I     � 5K     $��1��6   .+�5M     '  !HandyControl.Controls.ButtonGroup  $��50��6!   $��100,0,100,100q�6-   .@�5N     �� �� 5O     5P     � 5U     $��1��6   .+�5V     �� ��6%   �� *SelectedViewModel+5W     5X     5Y     5\     5k     