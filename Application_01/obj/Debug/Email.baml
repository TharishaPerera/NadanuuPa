   M S B A M L   `   `   `  ����E  ANaadanu Pa, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Application_01Application_01  5   	       Application_01.Email   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.0.0.2422, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialdesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   (localclr-namespace:Application_01  5   	     � Title$  Send Invoice��5	   	   $	��180��6   $	��500��6+    � WindowStartupLocation$ CenterScreen=�67    � WindowStyle$
 None=�6\    � 
ResizeMode$ NoResize=�6o   .��5
      � -   5        ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFE63070��6    � Offset$ 1Q�61   � 5      $ 	#FFFE8704��6   $ 0Q�61   5      .+�5   
   �� -   5        $	��175��5      $	��Top=�6    �� CornerRadius$ 
10 10 20 0��66   ���#100E175      �� 5   
   	 �� Orientation$	 Vertical=�6   $��	10 5 10 5q�6,   .+�5      �� $	 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Gmail=�6*   $��30��67   $��30��6B   
�������6N   �� 5      $��Send Invoice��6   $��8 5 0 0q�60   
�������$��18(�6T   $��Ink Free)�6b   5      �� 5      $	 
Horizontal=�6   $��0 15 0 0q�62   .+�5        $
 UserAdd=�6*   $��20��69   $��30��6D   
�������6P   �� 5      -   5         ��Name$ txt_recipient��5      $
��10 0q�61   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Recipient Email Address��6?   
�������$	��440��6�   
������� �� 
CaretBrush �	#FFD94448 �� SelectionBrush �	#FFD94448$��14(�6�   5      �� 5      $	 
Horizontal=�6   $��0 10 0 0q�62   .+�5        $

 User=�6*   $��20��66   $��30��6A   
�������6M   �� 5      -   5        $ 
txt_sender��5      $
��10 0q�6.   $ Sender Email Address��6<   
�������$	��200��6�   
������� �	#FFD94448 �	#FFD94448$��14(�6�     5!      $
 Password=�6*   $��20��6:   $��30��6E   
�������6Q   G� 5"      -   5         G�Name$ 
txt_Passwd��5"      $
��10 0q�63   $ Senders Email Password��6A   
�������$	��200��6�   
������� G� 
CaretBrush �	#FFD94448 G� SelectionBrush �	#FFD94448$��14(�6�   5#      �� 5%      $	 
Horizontal=�6   $��Right=�62   $��0 20 0 0q�6N   .+�5&      �� -   5         ��Name$ btn_send��5&       �� 	IsDefault . $��80��6<   $��30��6G      MaterialDesignRaisedButton#��[  6S   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 12��6�   $��2q�6�   ���#D94448���#D94448
������� � ToolTip$ Regiter��6  $
��Send��6  $��14(�6(  $��Ink Free)�66  $
��Bold"�6L  6^  �� 5'      -   5        $ 
btn_cancel��5'      $��80��6-   $��30��68   $��5 0 0 0q�6D   #��[  6U   $ 12��6�   $��2q�6�   ���#D94448���#D94448
�������$ Cancel��6	  $��Cancel��6  $��14(�6+  $��Ink Free)�69  $
��Bold"�6O  6a  5(      5)      5+      5,      