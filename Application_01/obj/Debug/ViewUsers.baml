   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5          Application_01.ViewUsers   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� ._�5      �� $	��556��6   $��Bottom=�6"    �� CornerRadius$ 0 0 0 0��6=   ���#100E175      5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5        -   5          Name$ ViewUsers_Datagrid��5   J      AutoGenerateColumns .    SelectionUnit$ FullRow=�62   $	��800��6f   $	��556��6r   	   
IsReadOnly	 . #���   6�   
����������#100E17���	#FFFE8704
   GridLinesVisibility$
 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704$��0q�6?  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6S  $��Normal"�6�    5       �� BasedOn��%�   '        7 �� 5      8   "  6U   .�5       ��  � ��
 �����67   �� 5!       � ��$
 Bold"�67   �� 5"       � �� �#f4433667   5#      5$      5%      5&      5(      5)      