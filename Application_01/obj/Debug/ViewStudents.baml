   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5      !    Application_01.ViewStudents   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � ��5   
   �� 5       �� 
StartPoint$ 0.9,1&�6"    �� EndPoint$ 0.1,0&�65   .��5      �  � Color$ 	#FFFE8704��6   � 5      $ 	#FFE63070��6    � Offset$ 1Q�61   5      .+�5   
   �� ._�5      �� $	��580��6   $��Bottom=�6"    �� CornerRadius$ 5 5 0 0��6=   ���#100E175      5       �� 5"   
   	 �� Orientation$	 Vertical=�6   .+�5#        -   5        
  Name$
 ViewStudent_Datagrid��5#   2      AutoGenerateColumns .    SelectionUnit$ FullRow=�6P   #���   6i   $	��750��6�   $	��565��6�      
IsReadOnly . 
�������
������    GridLinesVisibility$ 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704���	#FFFE8704$��0q�6F  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6Z  $��Normal"�6�    5$       �� BasedOn��%�   '        7 �� 5%      8   "  6U   .�5&      ��  � ��
 �����67   �� 5'       � ��$
 Bold"�67   �� 5(       � ��
 ���� 67   5)      5*      5+      �� 5-      $	 
Horizontal=�6   $��	10 15 0 0q�62   $��Center=�6E   .+�5.      �� -   5         ��Name$ 	cmb_grade��5.      $	��120��6.   $��40��6:   $��Center=�6F   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Grade��6a     MaterialDesignComboBox#��[ 6�   
�������
�������$��Footlight MT Light)�6�   $��22(�6�   &   System.Windows.Media.TextOptions   TextHintingMode$ Animated=�6     TextFormattingMode$ Display=�64  .@�5/      �� 
����������#595959$��Grade 1��6K   �� 50      
����������#595959$��Grade 2��6K   �� 51      
����������#595959$��Grade 3��6K   �� 52      
����������#595959$��Grade 4��6K   �� 53      
����������#595959$��Grade 5��6K   �� 54      
����������#595959$��Grade 6��6K   �� 55      
����������#595959$��Grade 7��6K   �� 56      
����������#595959$��Grade 8��6K   �� 57      
����������#595959$��Grade 9��6K   �� 58      
����������#595959$��Grade 10��6K   �� 59      
����������#595959$��Grade 11��6K   �� 5:      
����������#595959$��Grade 12��6K   5;      �� 5=      -   5         ��Name$ 	txt_sName��5=      $��10 0 0 0q�6-   $
 Name��6?   
�������$	��125��6x   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��22(�6�   $��Footlight MT Light)�6�   �� 5>      -   5         ��Name$ 
btn_search��5>      $��15 0 0 0q�6-   $��Center=�6?   $��Center=�6Z   $��40��6w   $	��115��6�   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10 10 10 10��6�   $��Search��6�   $��Curlz MT)�6�   $��22(�6   �� 	IsDefault . 6/  �� 5?      -   5        $ btn_searchAll��5?      $��10 0 0 0q�60   $��Center=�6B   $��Center=�6]   $��40��6z   $	��115��6�   $ 10 10 10 10��6�   $��
Search All��6�   $��Curlz MT)�6�   $��22(�6  6  �� 5@      -   5        $ 	btn_clear��5@      $��10 0 0 0q�6,   $��Center=�6>   $��Center=�6Y   $��40��6v   $	��115��6�   $ 10 10 10 10��6�   $��Clear��6�   $��Curlz MT)�6�   $��22(�6  6  5A      5C      5D      5E      