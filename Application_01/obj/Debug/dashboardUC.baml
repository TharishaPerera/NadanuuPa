   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5           Application_01.dashboardUC   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      (localclr-namespace:Application_01  5      .��5      � ��5   
   �� 5        �� 
StartPoint$  0.9,1&�6"    �� EndPoint$ 0.1,0&�65   .��5      �  � Color$ 	#FFFE8704��6   � 5      $ 	#FFE63070��6    � Offset$ 1Q�61   5      .+�5   
   �� ._�5      �� $	��600��6   $��Bottom=�6"    �� CornerRadius$ 5 5 0 0��6=   ���#100E175      5      �� 5   
    �� Orientation$ Vertical=�6   .+�5      �� $ 
Horizontal=�6   $��Center=�62   .+�5      �� $��	Dashboard��6   $��0 0 0 0q�6-   
�������$��30(�6Q   $��Curlz MT)�6_   5      �� 5      $ 
Horizontal=�6   $��30 40 30 30q�62   .+�5      �� $ Vertical=�6   $	��350��64   .+�5      �� $��Admins:��6    
�������$��0 0 0 15q�6B   $��Footlight MT Light)�6T   $��24(�6t   �� 5      $��Other Users:��6    
�������$��0 0 0 15q�6G   $��Footlight MT Light)�6Y   $��24(�6y   �� 5      $��Male Students:��6    
�������$��0 0 0 15q�6I   $��Footlight MT Light)�6[   $��24(�6{   �� 5       $��Female Students:��6    
�������$��Footlight MT Light)�6K   $��24(�6k   5!      �� 5"      $ Vertical=�6   $	��350��64   .+�5#      � -   5         �Name$ pbar_Admins��5#   "   $��24��67   $	��300��6C   $��0 0 0 15q�6O   
������ ���	#FFFE8704 � SmallChange$ 0Q�6�   � 5$      -   5        $ 
pbar_Users��5$   "   $��24��66   $	��300��6B   $��0 0 0 15q�6N   
������ ���	#FFFE8704$ 0Q�6�   � 5%      -   5        $ pbar_NoMale��5%   "   $��0 0 0 15q�67   $��24��6I   $	��300��6U   
������ ���	#FFFE8704$ 0Q�6�   � 5&      -   5        $ pbr_NoFemale��5&   "   $��24��68   $	��300��6D   $��0 0 0 0q�6P   
������ ���	#FFFE8704$ 0Q�6�   5'      5(      �� 5)      $ Vertical=�6   .+�5*      �� -   5         ��Name$ txt_TotFees��5*      $
��0.00��61   $��0 0 0 10q�6=   $��	Underline{�6O   
�������$��Center=�6~   $��40(�6�   $��Footlight MT Light)�6�   �� 5+      $)��#T o t a l  F e e s  R e c i e v e d��6   $��0 0 0 30q�6G   
�������$��Center=�6l   $��24(�6�   $��Footlight MT Light)�6�   �� 5-      -   5        $ txt_AvgFees��5-      $
��0.00��61   $��0 0 0 10q�6=   $��	Underline{�6O   
�������$��Center=�6~   $��40(�6�   $��Footlight MT Light)�6�   �� 5.      $-��'A v e r a g e  F e e s  R e c i e v e d��6   $��0 0 0 30q�6K   
�������$��Center=�6p   $��24(�6�   $��Footlight MT Light)�6�   5/      �� 50      .+�51      �� $��Naadanu Paa��6   $��0 20 0 0q�6/   
�������
������ 	 �� TextAlignment$	 Center=�6m   $��Center=�6�   $��72(�6�   $��Gabriola)�6�   $	��108��6�   
 J� Opacity$
 0.995Q�6�   52      54      57      58      