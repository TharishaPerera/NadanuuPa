   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5      "    Application_01.UpdateStudent   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ��5   
   �� 5       �� 
StartPoint$ 0.9,1&�6"    �� EndPoint$ 0.1,0&�65   .��5      �  � Color$ 	#FFFE8704��6   � 5      $ 	#FFE63070��6    � Offset$ 1Q�61   5      .+�5   
   �� ._�5      �� $	��636��6   $��Bottom=�6"    �� CornerRadius$ 5 5 0 0��6=   ���#100E175      5       �� 5"   
   	 �� Orientation$	 Vertical=�6   .+�5#      �� $	 
Horizontal=�6   $��Center=�62   .+�5$      �� $��UPDATE STUDENT DETAILS��6   $��0 0 0 0q�6:   
�������$��30(�6^   $��Curlz MT)�6l   5%      �� 5&      $	 
Horizontal=�6   .+�5'      �� $��5 5 5 5q�6   $
��Left=�6.   .+�5(        -   5        
  Name$
 US_DataGrid��5(      $	��589��64   $	��200��6A      AutoGenerateColumns .    SelectionUnit$ FullRow=�6h      
IsReadOnly . #���   6�   
�������
������ ���	#FFFE8704   GridLinesVisibility$ 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704$��0q�6D  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6X  $��Normal"�6�    5)       �� BasedOn��%�   '        7 �� 5*      8   "  6]   .�5+   "   ��  � ��
 �����6?   �� 5,   "    � ��$
 Bold"�6?   �� 5-   "    � �� �#f443366?   �� 5.   "    � ��$ 10(�6=   5/      50      51      52      �� 53      $	 Vertical=�6   .+�54      �� -   5         ��Name$ txt_err��54       $�� ��61   $��10 15 10 10q�69   ���	#FFE63070$��Right=�6e    �� TextAlignment$
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   �� 55      $	 
Horizontal=�6!   .+�56      �� $	 Vertical=�6%   .+�57      �� $��
Student ID��6(   $��
10 25 0 20q�6:   
�������$
��Left=�6a   $
 Left=�6|   $��Footlight MT Light)�6�   $��24(�6�   �� 58      $��Student Name��6(   $��
10 26 0 20q�6<   
�������$
��Left=�6c   $
 Left=�6~   $��Footlight MT Light)�6�   $��24(�6�   �� 59      $��Student Gender��6(   $��
10 25 0 20q�6>   
�������$
��Left=�6e   $
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   �� 5:      $��Student Grade��6(   $��
10 25 0 20q�6=   
�������$
��Left=�6d   $
 Left=�6   $��Footlight MT Light)�6�   $��24(�6�   �� 5;      $��Contact Number��6(   $��
10 26 0 20q�6>   
�������$
��Left=�6e   $
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   �� 5<      $��Student Address��6(   $��
10 25 0 20q�6?   
�������$
��Left=�6f   $
 Left=�6�   $��Footlight MT Light)�6�   $��24(�6�   5=      �� 5>      $	 Vertical=�6%   $��50 0 0 0q�6<   $	��300��6N   .+�5?      �� $	 
Horizontal=�6)   .+�5@   "   �� -   5         ��Name$ txt_id��5@   *   $��10 10 0.2 20q�6:   $	��150��6P   $
��Left=�6\   
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��24(�6�   �� 5A   "   -   5         ��Name$ btn_go��5A   )   $��40 0 0 0q�69   $��50��6K   $��75��6W   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20 20 20 20��6b   $��Go��6�   $��Curlz MT)�6�   $��22(�6�    �� 	IsDefault . 6�   5B      �� 5C      -   5        $ txt_name��5C   &   $��10 10 0.2 20q�68   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5D      -   5        $ 
txt_gender��5D   &   $��10 10 0.2 20q�6:   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Male / Female��6P   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5E      -   5        $ 	txt_grade��5E   &   $��10 10 0.2 20q�69   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5F      -   5        $ txt_tp��5F   &   $��10 10 0.2 20q�66   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5G      -	   5        $ txt_address��5G   &   $��10 10 0.2 20q�6;   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   5H      5I      �� 5K      $	 
Horizontal=�6!   $��Right=�6:   .+�5L      �� -
   5        $ 	btn_clear��5L   !   $��0 50 0 0q�65   $��50��6G   $	��115��6S   $ 10 10 10 10��6_   $��Clear��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5M      -   5        $ btn_save��5M   !   $��	10 50 0 0q�64   $��50��6G   $	��115��6S   $ 10 10 10 10��6_   $
��Save��6�   $��Curlz MT)�6�   $��22(�6�   6�   5N      5P      5R      5T      5V      5W      