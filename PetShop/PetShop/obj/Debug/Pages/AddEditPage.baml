   M S B A M L   `   `   `  ����B  >PetShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:PetShop.PagesPetShop.Pages  5          PetShop.Pages.AddEditPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:PetShop.Pages     5        N� Title$  AddEditPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      $��40 �6   6*    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   �� $��0��6   $��0��6"   $��Center=�5      $��Center=�60   .+�5      �� $	��ID:��6   6$   �� 5      $��0��6   {�.  63   �� 5      $��Наименование:��6   6.   �� 5      -   5         ��Name$ NameTB��5      6(   �� 5      $��Категория:��6   6+   �� 5      -   5         ��Name$ 
CategoryCB��5       �� DisplayMemberPath$ CategoryName��5       ��5      �� *CategoryName+ �� StringFormat$	 {0}��5!      �� 5#      $-��'Количество на складе:��6   66   �� 5$      -   5        $ 
QuantityTB��5$      6,   �� 5&      $(��"Единица измерения:��6   63   �� 5'      -   5        $ UnitTB��5'      6(   �� 5)      $��Поставщик:��6   6+   �� 5*      -   5        $ DealerTB��5*      6*   �� 5,      $-��'Стоимость за единицу:��6   66   �� 5-      -   5        $ PriceTB��5-      6)   5/      �� 52   
   $��0��6   $��1��6"   $��Center=�53      $��Center=�60   .+�54      �� $��/res/picture.png��6   $	��200��6.   �� 55      -   5        $ DescriptionTB��56   L   $��Описание��55      $��0,20,0,0q�6&   $��75��68   $	��200��6D   " �� VerticalScrollBarVisibility$
 Auto=�6S   $��Center=�56       �� TextWrapping$
 Wrap=�68   6e   59      �� 5E   
   -   5        	 ��Name$	 
SaveButton��5E      $��1��6%   $��1��62   $��Center=�6B   $��Right=�5F      $��Сохранить��6-   $��0,0,10,0q�6A   6U   �� 5G   
   -	   5        $	 
BackButton��5G      $��1��6%   $��Center=�62   $
��Left=�5H      $��
Назад��6,   $��10,0,0,0q�6<   6P   5L      5M      