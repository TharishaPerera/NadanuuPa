   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	   "    Application_01.ViewEditUsers   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  View Edit Users��5	   	   $	��700��6!   $	��800��6.    � Icon$ icon.ico��6:    � WindowStartupLocation$ CenterScreen=�6J    � WindowStyle$
 None=�6o    � 
ResizeMode$ NoResize=�6�    � 	Resources 5         DGHeaderStyle �� 
TargetType&   System.Windows.Controls.DataGrid �� Property  DGCHeaderStyle �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader��%  &	        &	 X     �� 5   
   "  6&   .�5      ��  �@ ColumnHeaderStyle# �  62   5      �� 5   
   "  6'   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 �����6+   �� 5       � ��$
 Bold"�6+   5      5      .��5      � -   5        ��5   
   �� 5      	 �� 
StartPoint$	 0.9,1&�6"   
 �� EndPoint$
 0.1,0&�65   .��5      �  � Color$ 	#FFFE8704��6   � 5      $ 	#FFE63070��6    � Offset$ 1Q�61   5      .+�5   
   �� ._�5      �� -   5        $	��690��5      $��Bottom=�6"    �� CornerRadius$ 5 5 0 0��6=   ���#100E175       5!      �� 5#   
    �� Orientation$ Vertical=�6   .+�5$      �� $ 
Horizontal=�6   $��10 10q�62   .+�5%      �� $��Users��6   $��0q�6)   
������� �� TextAlignment$ Center=�6G   $��Center=�6^   $��40(�6y   $��Curlz MT)�6�    � Cursor$
 Hand��6�   �� 5&      $ 
Horizontal=�6   $��	270 0 0 0q�66   .+�5'      �� -   5         ��Name$ btn_editUsers��5'      $��5 0 5 0q�64   $��Center=�6E   $��40��6`   $	��180��6l   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10 10 10 10��6x   $��
Edit Users��6�   $��Curlz MT)�6�   $��22(�6�   6  �� 5(      -   5        $ btn_viewUsers��5(      $��0 0 5 0q�64   $��Center=�6E   $��40��6`   $	��180��6l   $ 10 10 10 10��6x   $��
View Users��6�   $��Curlz MT)�6�   $��22(�6�   6  �� 5)      -   5        $ btn_exit��5)   �   $��10 0 0 0q�6    & "MaterialDesignFloatingActionButton#��[ 6/    � ToolTip$ Close��6�   $��40��6�   $��40��6�   ��6k   Z� .��5*      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�62   
�������$��30��6R   $��30��6]   5+      5,      5-      �� 5/      -   5        $��	userStack��5/      $	��560��6*   51      �� 53      $ 
Horizontal=�6   .+�54      �� -   5        $ 
btn_goBack��54      $��10 10q�6-   $��Center=�6<   $��40��6W   $	��100��6c   $ 10 10 10 10��6o   $��Go Back��6�   $��Curlz MT)�6�   $��22(�6�   6�   55      58      5;      5<      