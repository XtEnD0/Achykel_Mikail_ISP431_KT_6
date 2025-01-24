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
                MessageBox.Show("Сохиранено", "ура!", MessageBoxButton.OK, MessageBoxImage.Information);
            }

        }
    }
}
