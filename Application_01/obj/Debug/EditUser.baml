   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5          Application_01.EditUser   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� ._�5      �� $	��556��6   $��Bottom=�6"    �� CornerRadius$ 0 0 0 0��6=   ���#100E175      5      �� 5   
    �� Orientation$ 
Horizontal=�6   $��10 10q�6.   .+�5      �� $��5 5 5 5q�6   $
��Left=�6*   .+�5        -   5          Name$ EU_DataGrid��5      $	��530��60   $	��200��6=      AutoGenerateColumns .    SelectionUnit$ FullRow=�6d   	   
IsReadOnly	 . #���   6�   
�������
������ ���	#FFFE8704
   GridLinesVisibility$
 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704$��0q�6@  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6T  $��Normal"�6�    5       �� BasedOn��%�   '        7 �� 5       8   "  6Y   .�5!      ��  � ��
 �����6;   �� 5"       � ��$
 Bold"�6;   �� 5#       � �� �#f443366;   �� 5$       � ��$ 10(�69   5%      5&      5'      5(      �� 5)      $ Vertical=�6   .+�5*      �� -   5         ��Name$ txt_err��5*      $�� ��6-   $��10 15 10 10q�65   ���	#FFE63070$��Right=�6a    �� TextAlignment$
 Left=�6}   $��Footlight MT Light)�6�   $��24(�6�   �� 5+      $ 
Horizontal=�6   $��40 10 40 40q�66   .+�5,      �� $ Vertical=�6!   .+�5-      �� $��User ID��6$   $��
10 25 0 20q�63   
�������$
��Left=�6Z   $
 Left=�6u   $��Footlight MT Light)�6�   $��24(�6�   �� 5.      $��UserName��6$   $��
10 26 0 20q�64   
�������$
��Left=�6[   $
 Left=�6v   $��Footlight MT Light)�6�   $��24(�6�   �� 5/      $��Password��6$   $��
10 25 0 20q�64   
�������$
��Left=�6[   $
 Left=�6v   $��Footlight MT Light)�6�   $��24(�6�   �� 50      $��Status��6$   $��
10 25 0 20q�62   
�������$
��Left=�6Y   $
 Left=�6t   $��Footlight MT Light)�6�   $��24(�6�   �� 51      $
��Role��6$   $��
10 25 0 20q�60   
�������$
��Left=�6W   $
 Left=�6r   $��Footlight MT Light)�6�   $��24(�6�   52      �� 53      $ Vertical=�6!   $��	100 0 0 0q�68   .+�54      �� $ 
Horizontal=�6%   .+�55      �� -   5         ��Name$ txt_id��55   &   $��10 10 0.2 20q�66   $	��150��6L   $
��Left=�6X   
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��24(�6�   �� 56      -   5         ��Name$ btn_go��56   %   $��40 0 0 0q�65   $��50��6G   $��75��6S   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20 20 20 20��6^   $��Go��6�   $��Curlz MT)�6�   $��22(�6�    �� 	IsDefault . 6�   57      �� 58      -   5        $ txt_username��58   "   $��10 10 0.2 20q�68   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 59      -   5        $ txt_password��59   "   $��10 10 0.2 20q�68   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5:      -   5        $ 
txt_status��5:   "   $��10 10 0.2 20q�66   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 1 - Active / 0 - Inactive��6L   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5;      -   5        $ txt_role��5;   "   $��10 10 0.2 20q�64   $ Admin / User��6J   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   5<      5=      �� 5?      $ 
Horizontal=�6   $��Center=�66   .+�5@      �� -	   5        $ 	btn_clear��5@      $��0 0 0 0q�61   $��50��6B   $	��115��6N   $ 10 10 10 10��6Z   $��Clear��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5A      -
   5        $ 
btn_delete��5A      $��10 0 0 0q�62   $��50��6D   $	��115��6P   $ 10 10 10 10��6\   $��Delete��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5B      -   5        $ btn_save��5B      $��10 0 0 0q�60   $��50��6B   $	��115��6N   $ 10 10 10 10��6Z   $
��Save��6�   $��Curlz MT)�6�   $��22(�6�   6�   5C      5E      5F      5I      5J      