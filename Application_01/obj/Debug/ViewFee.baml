   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5          Application_01.ViewFee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5   
      DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� ._�5      �� $	��556��6   $��Bottom=�6"    �� CornerRadius$ 0 0 0 0��6=   ���#100E175      5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��5 5 5 5q�6   $
��Left=�6*   .+�5        -   5          Name$ ViewFees_Data��5         SelectionUnit$ FullRow=�62   $	��545��6J   $	��200��6W      AutoGenerateColumns . 	   
IsReadOnly	 . #���   6�   
�������
������ ���	#FFFE8704
   GridLinesVisibility$
 
Horizontal=�6�      HorizontalGridLinesBrush �	#FFFE8704$��0q�6B  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6V  $��Normal"�6�    5       �� BasedOn��%�   '        7 �� 5       8   "  6Y   .�5!      ��  � ��
 �����6;   �� 5"       � ��$
 Bold"�6;   �� 5#       � �� �#f443366;   �� 5$       � ��$ 10(�69   5%      5&      5'      5(      �� 5)      $ Vertical=�6   $	��530��60   .+�5*      �� $ 
Horizontal=�6   $��60��66   .+�5+      �� $��
Search By:��6    $��5 0 0 0q�62   $��Center=�6C   
�������$��24(�6q   $��Bell MT)�6   	� 5,      -   5         	�Name$ rbn_sid��5,   "   $��10 0 0 0q�63   $��
Student ID��6E   
�������)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search by ID��6m   
�������$��Footlight MT Light)�6�   $��22(�6�    � Cursor$
 Hand��6�    d� 	IsChecked$
 TrueY�6�   	� 5-      -   5        $ 	rbn_grade��5-   "   $��5 0 0 0q�65   $��Grade��6F   
�������$ Search by Name��6i   
�������$��Footlight MT Light)�6�   $��22(�6�   $
 Hand��6�   	� 5.      -   5        $ 	rbn_month��5.   "   $��5 0 0 0q�65   $��Month��6F   
�������$ Search by Name��6i   
�������$��Footlight MT Light)�6�   $��22(�6�   $
 Hand��6�   6  	� 5/      -   5        $ rbn_all��5/   "   $��5 0 0 0q�63   $��
Search All��6D   
�������$ Search All Data��6l   
�������$��Footlight MT Light)�6�   $��22(�6�   $
 Hand��6�   6  50      �� 51      $ 
Horizontal=�6   $��Center=�66   $��Center=�6S   $��60��6n   .+�52      �� -   5         ��Name$ 	cmb_month��52      $	��120��62   $��35��6>   $��Center=�6J   $ Month��6e     MaterialDesignComboBox#��[ 6�   
�������
�������$��Footlight MT Light)�6�   $��22(�6  &   System.Windows.Media.TextOptions   TextHintingMode$ Animated=�6     TextFormattingMode$ Display=�68  .@�53      �� 
����������#595959$��January��6O   �� 54      
����������#595959$��February��6O   �� 55      
����������#595959$��March��6O   �� 56      
����������#595959$��April��6O   �� 57      
����������#595959$	��May��6O   �� 58      
����������#595959$
��June��6O   �� 59      
����������#595959$
��July��6O   �� 5:      
����������#595959$��August��6O   �� 5;      
����������#595959$��	September��6O   �� 5<      
����������#595959$��October��6O   �� 5=      
����������#595959$��November��6O   �� 5>      
����������#595959$��December��6O   5?      �� 5@      -   5         ��Name$ txt_id_grade��5@      $��10 0 0 0q�64   $ 
ID / Grade��6F      
Foreground
 �����
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$
��Left=�6�   $��Center=�6  $	��100��6.  $��22(�6:  $��Footlight MT Light)�6H  �� 5A      -   5         ��Name$ 
btn_search��5A      $��10 0 0 0q�61   $��Center=�6C   $��40��6^   $��90��6j   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10 10 10 10��6u   $��Search��6�   $��Curlz MT)�6�   $��22(�6�    �� 	IsDefault . 6  �� 5B      -	   5        $ 	btn_clear��5B      $��5 0 0 0q�60   $��Center=�6A   $��40��6\   $��75��6h   $ 10 10 10 10��6s   $��Clear��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5C      -
   5        $ 	btn_print��5C      $��10 0 0 0q�60   $��Center=�6B   $��40��6]   $��90��6i   $ 10 10 10 10��6t   $��Print��6�   $��Curlz MT)�6�   $��22(�6�   6�   5D      �� 5E      $ Vertical=�6   $	��436��64   .+�5F        -   5        $ ViewFees_Datagrid��5F   R    . $ FullRow=�6:   $	��530��6m   $	��436��6y   	 . #���   6�   
����������#100E17���	#FFFE8704$
 
Horizontal=�6    �	#FFFE8704$��0q�6F  $ 	0 0 10 10��6Z  $��Normal"�6�    5G      ��%�   '        7 �� 5H      8   "  6]   .�5I   "   ��  � ��
 �����6?   �� 5J   "    � ��$
 Bold"�6?   �� 5K   "    � �� �#f443366?   5L      5M      5N      5O      5Q      5S      5U      5V      