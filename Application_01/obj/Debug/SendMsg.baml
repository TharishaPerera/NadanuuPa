   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5          Application_01.SendMsg   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ��5   
   �� 5       �� 
StartPoint$ 0.9,1&�6"    �� EndPoint$ 0.1,0&�65   .��5      �  � Color$ 	#FFFE8704��6   � 5      $ 	#FFE63070��6    � Offset$ 1Q�61   5      .+�5   
   �� ._�5      �� $	��636��6   $��Bottom=�6"    �� CornerRadius$ 5 5 0 0��6=   ���#100E175      5       �� 5!   
   	 �� Orientation$	 Vertical=�6   .+�5"      �� $	 
Horizontal=�6   $��Center=�62   .+�5#      �� $��Send Messages��6   $��0 0 0 0q�61   
�������$��30(�6U   $��Curlz MT)�6c   5$      �� 5%      $	 
Horizontal=�6   .+�5&      �� $��5 5 5 5q�6   $
��Left=�6.   .+�5'        -   5        
  Name$
 SendMsg_DataGrid��5'         SelectionUnit$ FullRow=�69   $	��589��6Q   $	��200��6^      AutoGenerateColumns .    
IsReadOnly . #���   6�   
�������
������ ���	#FFFE8704   GridLinesVisibility$ 
Horizontal=�6     HorizontalGridLinesBrush �	#FFFE8704$��0q�6I  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6]  $��Normal"�6�    5(       �� BasedOn��%�   '        7 �� 5)      8   "  6]   .�5*   "   ��  � ��
 �����6?   �� 5+   "    � ��$
 Bold"�6?   �� 5,   "    � �� �#f443366?   �� 5-   "    � ��$ 10(�6=   5.      5/      50      51      �� 52      $	 Vertical=�6   $	��530��64   .+�53      �� $	 
Horizontal=�6!   $��0 50 0 0q�6:   .+�54      �� $	 Vertical=�6%   .+�55      �� -   5         ��Name$ txt_id_grade��55   (   $��
Student ID��6>   $��
10 25 0 20q�6P   
�������$
��Left=�6w    �� TextAlignment$
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   �� 56      $��Contact Number��6(   $��
10 25 0 20q�6>   
�������$
��Left=�6e   $
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   �� 57      $��Message��6(   $��
10 25 0 20q�67   
�������$
��Left=�6^   $
 Left=�6y   $��Footlight MT Light)�6�   $��24(�6�   58      �� 59      $	 Vertical=�6%   $��40 0 0 0q�6<   $	��300��6N   .+�5:      �� $	 
Horizontal=�6)   .+�5;   "   �� -   5         ��Name$ txt_id��5;   *   $��
10 10 0 20q�6:   $	��150��6N   $
��Left=�6Z   
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��24(�6�   �� 5<   "   -   5         ��Name$ btn_go��5<   )   $��40 0 0 0q�69   $��40��6K   $��75��6W   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20 20 20 20��6b   $��Go��6�   $��Curlz MT)�6�   $��22(�6�    �� 	IsDefault . 6�   5=      �� 5>      -   5        $ txt_tp��5>   &   $��
10 10 0 20q�67   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5?      -   5         ��Name$ cmb_msg��5?   '   $��
10 12 0 20q�68   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Select Template��6L     MaterialDesignComboBox#��[ 6}   
�������$��22(�6�   .@�5@   "   �� 
����������#595959$��New Message��6W   �� 5A   "   
����������#595959$��
Template 1��6W   �� 5B   "   
����������#595959$��
Template 2��6W   �� 5C   "   
����������#595959$��
Template 3��6W   5D      5E      5F      �� 5G      -   5        $ txt_msg��5G      $��	10 0 15 0q�6/   $	��250��6B   $	��500��6O   $��Center=�6[   ���#595959
�������$ Type Message Here��6�   $��20(�6�    �� TextWrapping$
 Wrap=�6�    �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=�6
  62  �� 5H      $��	0 15 20 0q�6!   $	 
Horizontal=�64   $��Right=�6M   .+�5I      �� -   5        $ 	btn_clear��5I   !   $��0 0 0 0q�64   $��Center=�6E   $��Center=�6`   $��40��6}   $	��115��6�   $ 10 10 10 10��6�   $��Clear��6�   $��Curlz MT)�6�   $��22(�6  6  �� 5J      -	   5        $ btn_send��5J   !   $��5 0 0 0q�63   $��Center=�6D   $��Center=�6_   $��40��6|   $	��115��6�   $ 10 10 10 10��6�   $
��Send��6�   $��Curlz MT)�6�   $��22(�6  6  5K      5L      5N      5Q      5S      5T      