   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	       Application_01.Home   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$
  Home��5	   	   $	��700��6   $
��1100��6#    � Icon$ icon.ico��60    � WindowStartupLocation$ CenterScreen=�6@    � WindowStyle$
 None=�6e    � 
ResizeMode$ NoResize=�6x    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /assets/icons.xaml?�6%   %    5      .��5      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"   	 �� EndPoint$	 0.9,1&�65   .��5      � 
 � Color$
 	#FFE63070��6    � Offset$ 1Q�61   � 5      $
 	#FFFE8704��6   5      .+�5   
   �� ._�5      �� -   5        $	��657��5      $	��Top=�6"    �� CornerRadius$ 
0 0 180 25��6:   ���#100E176i   5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5"      �� $	��250��6   .+�5#      �� -   5         ��Name$ 
txtbl_home��5#      $
��HOME��60   $��0q�6<   
������� �� TextAlignment$ Center=�6Z   $��Center=�6q   $��40(�6�   $��Curlz MT)�6�    � Cursor$
 Hand��6�   6�   �� 5$      $ Vertical=�6   $��0 60 0 0q�64   .+�5%      �� -   5         ��Name$ btn_dashboard��5%      $��5 10 5 0q�64   $��50��6F   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 7��6R   $��	Dashboard��6   $��22(�6�   $��Curlz MT)�6�   6�   �� 5&      -   5        $ btn_students��5&      $��5 10 5 0q�63   $��50��6E   $ 7��6Q   $��Students��6~   $��22(�6�   $��Curlz MT)�6�   6�   �� 5'      -   5        $ btn_attendance��5'      $��5 10 5 0q�65   $��50��6G   $ 7��6S   $��
Attendance��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5(      -   5        $ btn_fees��5(      $��5 10 5 0q�6/   $��50��6A   $ 7��6M   $
��Fees��6z   $��Curlz MT)�6�   $��22(�6�   6�   �� 5)      -   5        $ btn_sendSMS��5)      $��5 10 5 0q�62   $��50��6D   $ 7��6P   $��Send Messages��6}   $��22(�6�   $��Curlz MT)�6�   6�   �� 5*      -	   5        $ btn_viewUsers��5*      $��	5 130 5 0q�64   $��50��6G   $ 7��6S   $��View/edit Users��6�   $��22(�6�   $��Curlz MT)�6�   6�   �� 5+      $ 
Horizontal=�6!   $��0 8 0 0q�6:   .+�5,      �� -
   5        $ 
btn_logout��5,   !   $��5 0 5 0q�65   $��50��6F   $	��117��6R   $ 5 0 0 25��6^   $��Logout��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5-      -   5        $ btn_bottum_exit��5-   !   $��0 0 5 0q�6:   $��50��6K   $	��117��6W   $ 	0 10 10 0��6c   $
��Exit��6�   $��Curlz MT)�6�   $��22(�6�   6�   5.      5/      50      �� 51      -   5        $��	HomeStack��51   %   $	��750��6   53      �� 54      $	��100��6   .+�55      �� -   5        $ btn_exit��55   �   $��10,20,10,10q�6    &  "MaterialDesignFloatingActionButton#��[  6.    � ToolTip$ Close��6�   ��6j   Z� .��56      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   
�������$��30��6N   $��30��6Y   57      �� 58      -   5        $ btn_minimize��58   �   $��10 -5q�6    * &MaterialDesignFloatingActionMiniButton#��[ 6(   $ Minimize��6~   ��6h   Z� .��59        $ WindowMinimize=�6.   
�������$��15��6X   $��50��6c   5:      5;      5I      5N      5O      