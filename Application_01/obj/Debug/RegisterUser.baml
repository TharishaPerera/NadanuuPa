   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	   !    Application_01.RegisterUser   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  Register User��5	   	   $	��400��6   $	��320��6,    � WindowStartupLocation$ CenterScreen=�68    � WindowStyle$
 None=�6]    � 
ResizeMode$ NoResize=�6p   .��5
      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFE63070��6    � Offset$ 1Q�61   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� -   5        $	��390��5      $	��Top=�6    �� CornerRadius$ 10 10 100 0��66   ���#100E175      �� 5   
   	 �� Orientation$	 Vertical=�6   .+�5      �� $��Register User��6   $��8 0 0 0q�6-   
�������$��25(�6Q   $��Ink Free)�6_   �� 5      $	 
Horizontal=�6   $��10 40 10 10q�62   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$

 User=�6*   $��30��66   $��30��6A   
�������6M   �� 5      -   5         ��Name$ txt_username��5      $
��10 0q�60   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��6>   
�������$	��250��6{   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��16(�6�   5      �� 5      $	 
Horizontal=�6   $��10 10 10 10q�62   .+�5        $

 Lock=�6*   $��30��66   $��30��6A   
�������6M   G� 5      -   5         G�Name$ 
txt_passwd��5      $
��10 0q�62   $ Password��6@   
�������$	��250��6}   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD94448$��16(�6�   5      �� 5      $	 
Horizontal=�6   $��10 10 10 10q�62   .+�5        $

 Lock=�6*   $��30��66   $��30��6A   
�������6M   G� 5      -   5        $ txt_repeatPasswd��5      $
��10 0q�69   $ Repeat Password��6G   
�������$	��250��6�   
������� �	#FFD94448 �	#FFD94448$��16(�6�   5       �� 5!      $	 
Horizontal=�6   $��10 10 10 10q�62   .+�5"        $

 User=�6*   $��30��67   $��30��6B   
�������6N   �� 5#      -   5        $ txt_role��5#      $
��10 0q�6-   $
 Role��6;   
�������$	��250��6t   
������� �	#FFD94448 �	#FFD94448$��16(�6�   5$      �� 5%      .+�5&      �� -   5         ��Name$ txt_err��5&      $�� ��6-   $��10 15 10 10q�65   ���	#FFE63070$��Right=�6a    �� TextAlignment$
 Left=�6}   $��Footlight MT Light)�6�   $��20(�6�   5'      �� 5(      $	 
Horizontal=�6   $��	10 35 0 0q�62   .+�5)      �� -   5         ��Name$ btn_register��5)      $	��100��6/   $��40��6;      MaterialDesignRaisedButton#��[  6G   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 12��6{   $��2q�6�   ���#D94448���#D94448
������� � ToolTip$ Regiter��6�   $��Register��6  $��16(�6   $��Ink Free)�6.  $
��Bold"�6D  6V  �� 5*      -	   5        $ 
btn_cancel��5*      $	��100��6-   $��40��69   $��5 0 0 0q�6E   #��[  6V   $ 12��6�   $��2q�6�   ���#D94448���#D94448
�������$ Cancel��6
  $��Cancel��6  $��16(�6,  $��Ink Free)�6:  $
��Bold"�6P  6b  5+      5,      5-      5.      