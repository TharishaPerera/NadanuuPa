   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5      "    Application_01.DeleteStudent   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
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
Horizontal=�6   $��Center=�62   .+�5$      �� $��DELETE STUDENTS��6   $��0 0 0 0q�63   
�������$��30(�6W   $��Curlz MT)�6e   5%      �� 5&      $	 
Horizontal=�6   .+�5'      �� $��5 5 5 5q�6   $
��Left=�6.   .+�5(        -   5        
  Name$
 Del_DataGrid��5(      $	��589��65   $	��200��6B      SelectionUnit$ FullRow=�6N      AutoGenerateColumns .    
IsReadOnly . #���   6�   
�������
������ ���	#FFFE8704   GridLinesVisibility$ 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704$��0q�6E  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6Y  $��Normal"�6�    5)       �� BasedOn��%�   '        7 �� 5*      8   "  6]   .�5+   "   ��  � ��
 �����6?   �� 5,   "    � ��$
 Bold"�6?   �� 5-   "    � �� �#f443366?   �� 5.   "    � ��$ 10(�6=   5/      50      51      52      �� 53      $	 Vertical=�6   $��Center=�64   $	��540��6Q   .+�54      �� -   5         ��Name$ txt_sID��54      $��	0 100 0 0q�6/   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter Student ID��6B   
�������$	��250��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��22(�6�   �� 55      -   5         ��Name$ 
btn_delete��55      $��0 10 0 0q�61   $��Center=�6C   $��Center=�6^   $��40��6{   $	��115��6�   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10 10 10 10��6�   $��Delete��6�   $��Curlz MT)�6�   $��22(�6   �� 	IsDefault . 63  56      58      5:      5<      5=      