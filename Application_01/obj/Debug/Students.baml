   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	       Application_01.Students   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  Students��5	   	   $	��700��6   $
��1100��6'    � Icon$ icon.ico��64    � WindowStartupLocation$ CenterScreen=�6D    � WindowStyle$
 None=�6i    � 
ResizeMode$ NoResize=�6|    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /assets/icons.xaml?�6%   %    5      .��5      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"   	 �� EndPoint$	 0.9,1&�65   .��5      � 
 � Color$
 	#FFE63070��6    � Offset$ 1Q�61   � 5      $
 	#FFFE8704��6   5      .+�5   
   �� ._�5      �� -   5        $	��657��5      $	��Top=�6"    �� CornerRadius$ 
0 0 180 25��6:   ���#100E176i   5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $	��250��6   .+�5       �� -   5         ��Name$ txt_students��5       $��Students��62   $��0q�6B   
������� �� TextAlignment$ Center=�6`   $��Center=�6w   $��40(�6�   $��Curlz MT)�6�    � Cursor$
 Hand��6�   6�   �� 5!      $ Vertical=�6   $��0 60 0 0q�64   .+�5"      �� -   5         ��Name$ btn_viewStudents��5"      $��5 10 5 0q�67   $��50��6I   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 7��6U   $��View Students��6�   $��22(�6�   $��Curlz MT)�6�   6�   �� 5#      -   5        $ btn_registration��5#      $��5 10 5 0q�67   $��50��6I   $ 7��6U   $��Registration��6�   $��22(�6�   $��Curlz MT)�6�   6�   �� 5$      -   5        $ 
btn_update��5$      $��5 10 5 0q�61   $��50��6C   $ 7��6O   $��Update Student��6|   $��22(�6�   $��Curlz MT)�6�   6�   �� 5%      -   5        $ 
btn_delete��5%      $��5 10 5 0q�61   $��50��6C   $ 7��6O   $��Delete Student��6|   $��22(�6�   $��Curlz MT)�6�   6�   5&      �� 5'      $ 
Horizontal=�6   .+�5(      �� -   5        $ btn_back��5(      $��	5 248 5 0q�6/   $��50��6B   $	��115��6N   $ 5 0 0 25��6Z   $
��Back��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5)      -	   5        $ btn_bottum_exit��5)      $��	0 248 5 0q�66   $��50��6I   $	��115��6U   $ 	0 10 10 0��6a   $
��Exit��6�   $��Curlz MT)�6�   $��22(�6�   6�   5*      5+      �� 5,      -
   5        $��CustomStack��5,   J   $	��750��6   $	��638��6%   $	��Top=�62   5.      �� 5/      $	��100��6   .+�50      �� -   5        $ btn_exit��50      $��10,20,10,10q�6+    &  "MaterialDesignFloatingActionButton#��[  6@    � ToolTip$ Close��6�   ��6|   Z� .��51      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   
�������$��30��6N   $��30��6Y   52      �� 53      -   5        $ btn_minimize��53      $��10 -5q�6/    * &MaterialDesignFloatingActionMiniButton#��[ 6>   $ Minimize��6�   ��6~   Z� .��54        $ WindowMinimize=�6.   
�������$��15��6X   $��50��6c   55      56      57      59      5:      