   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	   !    Application_01.Registration   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  Registration��5	   	   $	��700��6   $	��500��6+    � Icon$ icon.ico��67    � WindowStartupLocation$ CenterScreen=�6G    � WindowStyle$
 None=�6l    � 
ResizeMode$ NoResize=�6    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /assets/icons.xaml?�6%   %    5      .��5      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"   	 �� EndPoint$	 0.9,1&�65   .��5      � 
 � Color$
 	#FFE63070��6    � Offset$ 1Q�61   � 5      $
 	#FFFE8704��6   5      .+�5   
   �� ._�5      �� -   5        $	��665��5      $	��Top=�6"    �� CornerRadius$ 
0 0 180 25��6:   ���#100E175      5      �� 5   
    �� Orientation$ Vertical=�6   .+�5       �� $ 
Horizontal=�6   .+�5!      �� $��REGISTRATION��6   $��0q�60   
������� �� TextAlignment$ Center=�6N   $��Center=�6e   $��40(�6�   $��Curlz MT)�6�   �� 5#      -   5         ��Name$ btn_minimize��5#      $��	130 0 0 0q�6/    *  &MaterialDesignFloatingActionMiniButton#��[  6B    � ToolTip$ Minimize��6�   ��6�   Z� .��5$      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ WindowMinimize=�6.   
�������$��15��6X   $��50��6c   5%      �� 5&      -   5        $ 	btn_close��5&      $��10q�6,    & "MaterialDesignFloatingActionButton#��[ 68   $ Close��6�   ��6t   Z� .��5'        $ Close=�6.   
�������$��30��6N   $��30��6Y   5(      5)      �� 5+      -   5         ��Name$ txt_err��5+      $�� ��6)   $��10 30 10 25q�61   ���	#FFE63070$��Right=�6]   $
 Left=�6y   $��Footlight MT Light)�6�   $��24(�6�   �� 5-      $ 
Horizontal=�6   .+�5.      �� $ Vertical=�6   $
�� 245��64   .+�5/      �� $��
Student ID��6    $��
10 25 0 20q�62   
�������$
��Left=�6Y   $
 Left=�6t   $��Footlight MT Light)�6�   $��24(�6�   �� 50      $��Student Name��6    $��
10 26 0 20q�64   
�������$
��Left=�6[   $
 Left=�6v   $��Footlight MT Light)�6�   $��24(�6�   �� 51      $��Student Age��6    $��
10 25 0 20q�63   
�������$
��Left=�6Z   $
 Left=�6u   $��Footlight MT Light)�6�   $��24(�6�   �� 52      $��Student Grade��6    $��
10 25 0 20q�65   
�������$
��Left=�6\   $
 Left=�6w   $��Footlight MT Light)�6�   $��24(�6�   �� 53      $��Contact Number��6    $��
10 26 0 20q�66   
�������$
��Left=�6]   $
 Left=�6x   $��Footlight MT Light)�6�   $��24(�6�   �� 54      $��Studemt Address��6    $��
10 25 0 20q�67   
�������$
��Left=�6^   $
 Left=�6y   $��Footlight MT Light)�6�   $��24(�6�   55      �� 56      $ Vertical=�6   $��5 0 0 0q�64   $	��245��6E   .+�57      �� -   5         ��Name$ txt_id��57      $��10 10 0.2 20q�6.   
�������
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��24(�6�   �� 58      -   5        $ txt_name��58      $��10 10 0.2 20q�60   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 59      -   5        $ txt_age��59      $��10 10 0.2 20q�6/   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5:      -	   5        $ 	txt_grade��5:      $��10 10 0.2 20q�61   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5;      -
   5        $ txt_tp��5;      $��10 10 0.2 20q�6.   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   �� 5<      -   5        $ txt_address��5<      $��10 10 0.2 20q�63   
�������
������� �	#FFD94448 �	#FFD94448$��24(�6�   5=      5>      �� 5?      $ 
Horizontal=�6   .+�5@      �� -   5        $ btn_back��5@      $��5 25 5 0q�6,   $��50��6>   $	��115��6J   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 
5 10 10 25��6V   $
��Back��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5A      -   5        $ btn_save��5A      $��0 25 5 0q�6,   $��50��6>   $	��115��6J   $ 10 10 10 10��6V   $
��Save��6�   $��Curlz MT)�6�   $��22(�6�   6�   5B      5I      5L      5M      