   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5          Application_01.EnterFee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5        � 	Resources  5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� ._�5      �� $	��556��6   $��Bottom=�6"    �� CornerRadius$ 0 0 0 0��6=   ���#100E175      5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��5 5 5 5q�6   $
��Left=�6*   .+�5        -   5          Name$ EnterFees_DataGrid��5         SelectionUnit$ FullRow=�67   $	��545��6O   $	��200��6\      AutoGenerateColumns . 	   
IsReadOnly	 . #���   6�   
�������
������ ���	#FFFE8704
   GridLinesVisibility$
 
Horizontal=�6     HorizontalGridLinesBrush �	#FFFE8704$��0q�6G  -  'MaterialDesignThemes.Wpf.DataGridAssist   CornerRadius$ 	0 0 10 10��6[  $��Normal"�6�    5       �� BasedOn��%�   '        7 �� 5       8   "  6Y   .�5!      ��  � ��
 �����6;   �� 5"       � ��$
 Bold"�6;   �� 5#       � �� �#f443366;   �� 5$       � ��$ 10(�69   5%      5&      5'      5(      �� 5)      $ Vertical=�6   $	��530��60   .+�5*      �� -   5         ��Name$ txt_err��5*      $�� ��6-   $��10 15 10 10q�65   ���	#FFE63070$��Right=�6a    �� TextAlignment$
 Left=�6}   $��Footlight MT Light)�6�   $��24(�6�   �� 5+      $ 
Horizontal=�6   .+�5,      �� $ Vertical=�6!   $��	10 50 0 0q�68   .+�5-      �� $��
Student ID��6$   $��
10 25 0 20q�66   
�������$
��Left=�6]   $
 Left=�6x   $��Footlight MT Light)�6�   $��24(�6�   �� 5.      $��Select Month��6$   $��
10 25 0 20q�68   
�������$
��Left=�6_   $
 Left=�6z   $��Footlight MT Light)�6�   $��24(�6�   �� 5/      $��Enter Amount��6$   $��
10 25 0 20q�68   
�������$
��Left=�6_   $
 Left=�6z   $��Footlight MT Light)�6�   $��24(�6�   50      �� 51      $ Vertical=�6!   $��	50 50 0 0q�68   $	��300��6K   .+�52      �� -   5         ��Name$ txt_sid��52   "   $��
10 13 10 0q�63   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Check ID With Name��6G      
Foreground �#666666
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$
��Left=�6  $	��280��6  $��22(�6*  (  "System.Windows.Controls.DatePicker  53      -   5          Name$ dp_month��53   %   $ MM/YYYY��67      IsTodayHighlighted . $��	10 32 0 0q�6z   
�������$
��Left=�6�   $	��280��6�   $��22(�6�   ���#6666666�   �� 54      -   5        $ 
txt_amount��54   "   $ Ex: 0000.00��66   $��
10 32 10 0q�6c   ���#666666
������� �	#FFD94448 �	#FFD94448$
��Left=�6�   $	��280��6�   $��22(�6�   55      56      �� 57      $ 
Horizontal=�6   $��0 30 0 0q�66   $��Center=�6H   .+�58      �� -   5         ��Name$ 	btn_clear��58      $��0 0 10 0q�60   $��Center=�6B   $��Right=�6]   $��40��6z   $	��115��6�   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10 10 10 10��6�   $��Clear��6�   $��Curlz MT)�6�   $��22(�6
  6  �� 59      -   5        $ btn_save��59      $��0 0 10 0q�6/   $��Center=�6A   $��Right=�6\   $��40��6y   $	��115��6�   $ 10 10 10 10��6�   $
��Save��6�   $��Curlz MT)�6�   $��22(�6   �� 	IsDefault . 6-  �� 5:      -   5        $ btn_invoice��5:      $��0 0 10 0q�62   $��Center=�6D   $��Right=�6_   $��40��6{   $	��115��6�   $ 10 10 10 10��6�   $��Invoice��6�   $��Curlz MT)�6�   $��22(�6  6  5;      5<      5=      5@      5A      