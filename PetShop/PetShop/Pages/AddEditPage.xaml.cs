using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        public AddEditPage()
        {
            InitializeComponent();
            CategoryCB.ItemsSource = Data.TradeEntities.GetContext().ProductCategory.ToList();
        }

        public static Data.Product _currentProduct = new Data.Product();
        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.manager.MainFrame.CanGoBack)
            {
                Classes.manager.MainFrame.GoBack();
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();
            if (String.IsNullOrEmpty(NameTB.Text))
            {
                err.AppendLine("Введите Наименование");
            }
            if (String.IsNullOrEmpty(CategoryCB.Text))
            {
                err.AppendLine("Выберите категорию");
            }
            if (String.IsNullOrEmpty(QuantityTB.Text))
            {
                err.AppendLine("Введите количество на складе");
            }
            if (String.IsNullOrEmpty(UnitTB.Text))
            {
                err.AppendLine("Введите Ед. измерения");
            }
            if (String.IsNullOrEmpty(DealerTB.Text))
            {
                err.AppendLine("Введите Поставщика");
            }
            if (String.IsNullOrEmpty(PriceTB.Text))
            {
                err.AppendLine("Введите Стоимость за единицу");
            }
            if (String.IsNullOrEmpty(DescriptionTB.Text) || DescriptionTB.Text == "Описание")
            {
                err.AppendLine("Введите Описание");
            }

            if(err.Length > 0)
            {
                MessageBox.Show(err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
            }else
            {
                try
                {
                    DataContext = _currentProduct;

                    _currentProduct.NameCategory.ProductCategoryName = NameTB.Text;
                    _currentProduct.ProductCategory.CategoryName = CategoryCB.Text;
                    _currentProduct.ProductQuantityInStock = Int32.Parse(QuantityTB.Text);
                    _currentProduct.Unit = UnitTB.Text;
                    _currentProduct.Dealer.DealerName = DealerTB.Text;
                    _currentProduct.ProductCost = Decimal.Parse(PriceTB.Text);
                    _currentProduct.ProductDescription = DescriptionTB.Text;

                    Data.TradeEntities.GetContext().Product.Add(_currentProduct);
                    Data.TradeEntities.GetContext().SaveChanges();

                    MessageBox.Show("Сохиранено", "ура!", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch(Exception ex)
                {
                    MessageBox.Show(ex.ToString(), "Возникло исключение!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                
            }

        }
    }
}
