   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   B >Kamilla, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:KamillaKamilla 5   	      Kamilla.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   'localclr-namespace:Kamilla     5   	   -   5          � Title$3  -Моя супре мега программа��5	   	   $	��450��6*   $
��1080��67    � 
ResizeMode$ NoResize=�6[    � 	Resources 5
       �� 
TargetType �� Property �� Value"  Kamilla.dbPoliceSuperDataSet   dbPoliceSuperDataSet  tbl_monkey_houseViewSource �� Source �� Source��%  '��       &	  �     &	 �     7   �� 5   
   " ��6   .�5      ��  � ��$ Century Gothic)�6+   �� 5       � ��$ 11(�6)   �� 5       � ��$ 
5 0 10 10 q�6'   5        5   
   6%   �� 5   
    6B   �� *tbl_monkey_house+8   5      .��5      �  � DataContext# [ 6   	 � ColumnDefinitions	 5   
   �� 5      $
��0.7* �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      �� $��15q�6   .+�5      �� $��ФИО: ��6   �� 5      -   5        
 ��Name$
 
textBoxFIO��5       �� AcceptsReturn . $��	10 0 5 10q�6C   $��Century Gothic)�6V   $��70��6r   �� 5      $#��Домашний адрес: ��6   �� 5      -   5        $
 textBoxAddress��5      $��	10 0 5 10q�62   $��70��6E    . 6Q   �� 5      $?��9Количество приводов в полицию: ��6   �� 5      -   5        $
 textBoxCountKosyak��5      $��	10 0 5 10q�66   �� 5       $��
Дата: ��6   (  "System.Windows.Controls.DatePicker  5!      -   5          Name$
 Date��5!      $��	10 0 5 10q�6+   
 �� Now   SelectedDate# Z 6>   5"      �� 5#      $��Bottom=�6    �� Orientation$ 
Horizontal=�64   $��10q�6M   .+�5$      �� -   5         ��Name$ buttonCreate��5$      $��5q�6/   $	��100��6:   $��Добавить��6F   6Y   �� 5%      -   5        $ 
buttonEdit��5%      $	��100��6-   $��5q�69   $��Изменить��6D   6W   �� 5&      -   5        $ buttonRemove��5&      $	��100��6/   $��5q�6;   $��Удалить��6F   6X   5'      5(      &   System.Windows.Controls.DataGrid  5)   
   -	   5          Name$ tbl_monkey_houseDataGrid��5)         AutoGenerateColumns .  $��1��6Q      EnableRowVirtualization . $��10q�6�      RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   ��6�   ��    Columns 5*      0  *System.Windows.Controls.DataGridTextColumn  5+      -
   5        	fIOColumn��,  &System.Windows.Controls.DataGridColumn   Header$ ФИО��5+   P      Width5  /System.Windows.Controls.DataGridLengthConverter$	 200 6]   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *FIO+6]     5,      -   5        addressColumn��$ 
Адрес��5,   X   $	 150 6g    6<   �� *	Address+6g     5-      -   5        misconductsColumn��$ Проступок��5-   `   $ SizeToHeader 6s    6@   �� *Misconducts+6s   4  .System.Windows.Controls.DataGridTemplateColumn  5.      -   5        
dateColumn��$ Дата��5.   =   $	 110 6K      CellTemplate 5/      �� 50      .R�51         6)   �� *Date+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 52      54      56      57      58      