   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	       Application_01.Dashboard   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  	Dashboard��5	   	   $	��700��6   $
��1100��6(    � Icon$ icon.ico��65    � WindowStartupLocation$ CenterScreen=�6E    � WindowStyle$
 None=�6j    � 
ResizeMode$ NoResize=�6}    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ /assets/icons.xaml?�6%   %    5      .��5      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"   	 �� EndPoint$	 0.9,1&�65   .��5      � 
 � Color$
 	#FFE63070��6    � Offset$ 1Q�61   � 5      $
 	#FFFE8704��6   5      .+�5   
   �� ._�5      �� -   5        $	��657��5      $	��Top=�6"    �� CornerRadius$ 
0 0 180 25��6:   ���#100E176i   5      �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $	��250��6   .+�5       �� $��	DASHBOARD��6   $��0q�6-   
������� �� TextAlignment$ Center=�6K   $��Center=�6b   $��40(�6}   $��Curlz MT)�6�   �� 5!      $ Vertical=�6   $��0 60 0 0q�64   .+�5"      �� $��Dancing��6    $��10 0 0 0q�6/   
�������$
 Left=�6T   $��Footlight MT Light)�6i   $��24(�6�   �� 5#      $��Is The��6    $��10 0 0 0q�6.   
�������$
 Left=�6S   $��Footlight MT Light)�6h   $��24(�6�   �� 5$      $��Hidden��6    $��	10 0 0 0 q�6.   
�������$
 Left=�6T   $��Footlight MT Light)�6i   $��24(�6�   �� 5%      $��Language��6    $��10 0 0 0q�60   
�������$
 Left=�6U   $��24(�6j   $��Footlight MT Light)�6x   �� 5&      $��Of The��6    $��10 0 0 0q�6.   
�������$
 Left=�6S   $��24(�6h   $��Footlight MT Light)�6v   �� 5'      $��Soul.��6    $��10 0 0 0q�6-   
�������$
 Left=�6R   $��24(�6g   $��Footlight MT Light)�6u   �� 5(      $��~ Martha Graham��6    $��0q�67   
�������$ Right=�6U   $��24(�6k   $��Footlight MT Light)�6y   �� 5)      $ 
Horizontal=�6!   .+�5*      �� -   5         ��Name$ btn_back��5*   !   $��	5 310 5 0q�63   $��50��6F   $	��115��6R   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 5 0 0 25��6^   $
��Back��6�   $��Curlz MT)�6�   $��22(�6�   6�   �� 5+      -   5        $ btn_bottum_exit��5+   !   $��	0 310 5 0q�6:   $��50��6M   $	��115��6Y   $ 	0 10 10 0��6e   $
��Exit��6�   $��Curlz MT)�6�   $��22(�6�   6�   5,      5-      5.      �� 5/      $	��750��6   51      �� 52      $	��100��6   .+�53      �� -   5        $ btn_exit��53      $��10,20,10,10q�6+    &  "MaterialDesignFloatingActionButton#��[  6@    � ToolTip$ Close��6�   ��6|   Z� .��54      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   
�������$��30��6N   $��30��6Y   55      �� 56      -   5        $ btn_minimize��56      $��10 -5q�6/    * &MaterialDesignFloatingActionMiniButton#��[ 6>   $ Minimize��6�   ��6~   Z� .��57        $ WindowMinimize=�6.   
�������$��15��6X   $��50��6c   58      59      5;      5>      5?      