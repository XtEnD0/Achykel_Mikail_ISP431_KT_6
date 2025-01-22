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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();
            if (String.IsNullOrEmpty(loginTB.Text))
            {
                err.AppendLine("Введите Логин");
            }
            if (String.IsNullOrEmpty(PasswordPB.Password))
            {
                err.AppendLine("Введите Пароль");
            }
            if (err.Length > 0)
            {
                MessageBox.Show(err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                MessageBox.Show("Проверка прошла успешно", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
            }

        }

        private void GuestButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.manager.MainFrame.Navigate(new Pages.ListPage());
        }
    }
}
