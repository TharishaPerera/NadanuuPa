   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	       Application_01.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � WindowStyle$
 None=�6Z    � 
ResizeMode$ NoResize=�6m   .��5
      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFE63070��6    � Offset$ 1Q�61   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� -   5        $	��390��5      $	��Top=�6    �� CornerRadius$ 	0 0 180 0��66   ���#100E175      �� 5   
   	 �� Orientation$	 
Horizontal=�6   .+�5      �� $	��350��6   .+�5      �� $��Images/logo.png��6   $	��300��61   $	��280��6=   $	��Top=�6J   $��20q�6b   $
��Fill=�6n   �� 5      $��Naadanu Paa��6   $��	0,-10,0,0q�6/   
�������
 �� TextAlignment$
 Center=�6U   $��Center=�6l   $��72(�6�   $��Gabriola)�6�   $	��108��6�    J� Opacity$ 0.995Q�6�   5      �� 5      $	��350��6   .+�5      �� $��20 40q�6   .+�5      �� $��
User Login��6    $��20q�62   
�������$
 Center=�6Q   $��36(�6h   $��Ink Free)�6v   6�   �� 5      $	 
Horizontal=�6!   $��10q�6:   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 User=�62   $��25��6>   $��25��6I   
�������6U   �� 5      -   5         ��Name$ txt_username��5   "   $
��10 0q�68   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter Username��6F   
�������$	��250��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��14(�6�   5      �� 5      $	 
Horizontal=�6!   $��10q�6:   .+�5         $
 Lock=�62   $��25��6>   $��25��6I   
�������6U   G� 5!      -   5         G�Name$ txt_password��5!   &   $
��10 0q�6<   $ 	*********��6J   
�������$	��250��6�   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD94448$��14(�6�   5"      �� 5#      $��10q�6!   $��Center=�6-   .+�5$      �� -   5         ��Name$ 	btn_login��5$   �   $	��100��6!   $��40��6-      MaterialDesignRaisedButton#��[  69   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 12��6m   $��2q�6�   ���#D94448���#D94448
������� � ToolTip$ Login��6�   $��Login��6(   �� 	IsDefault . 5%      5&      �� 5'      $	 
Horizontal=�6!   $��Center=�6:   $��0 20 0 0q�6W   .+�5(      �� -   5         ��Name$ txt_changePass��5(   $   $��Change Password��6<   $��Center=�6S   
�������$��Ink Free)�6�   $��	Underline{�6�    � Cursor$
 Hand��6�   6�   �� 5)      -   5        $ txt_reguser��5)   $   $��Register User��69   $��10 0 0 0q�6N   $��Center=�6`   
�������$��Ink Free)�6�   $��	Underline{�6�   $
 Hand��6�   6�   5*      5+      5,      �� 5-      $	��100��6   .+�5.      �� -   5        $ btn_exit��5.   �   $��10,20,10,10q�6    & "MaterialDesignFloatingActionButton#��[ 6.   $ Close��6�   ��6j   Z� .��5/        $ Close=�6.   
�������$��30��6N   $��30��6Y   50      �� 51      -	   5        $ btn_minimize��51   �   $��10 -5q�6    * &MaterialDesignFloatingActionMiniButton#��[ 6(   $ Minimize��6~   ��6h   Z� .��52        $ WindowMinimize=�6.   
�������$��15��6X   $��50��6c   53      54      55      57      58      