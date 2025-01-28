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
                if (Data.TradeEntities.GetContext().User.Any(d => d.UserLogin == loginTB.Text && d.UserPassword == PasswordPB.Password))
                {
                    var user = Data.TradeEntities.GetContext().User.Where(d => d.UserLogin == loginTB.Text && d.UserPassword == PasswordPB.Password).FirstOrDefault();
                    Classes.manager.CurrentUser = user;
                    switch (user.Role.RoleName)
                    {
                        case "Администратор":
                            Classes.manager.MainFrame.Navigate(new Pages.ListPage());
                            MessageBox.Show("Добро пожаловать, " + user.UserName + " " + user.UserPatronymic + "!", "Вы вошли как Администратор!", MessageBoxButton.OK, MessageBoxImage.Information);
                            break;
                        case "Клиент":
                            Classes.manager.MainFrame.Navigate(new Pages.ListPage());
                            MessageBox.Show("Добро пожаловать, " + user.UserName + " " + user.UserPatronymic + "!", "Вы вошли как Клиент!", MessageBoxButton.OK, MessageBoxImage.Information);
                            break;
                        case "Менеджер":
                            Classes.manager.MainFrame.Navigate(new Pages.ListPage());
                            MessageBox.Show("Добро пожаловать, " + user.UserName + " " + user.UserPatronymic + "!", "Вы вошли как Менеджер!", MessageBoxButton.OK, MessageBoxImage.Information);
                            break;

                    }


                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }

        }

        private void GuestButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Вы хотите войти как гость?", "Внимание!", MessageBoxButton.YesNo, MessageBoxImage.Warning);

            Classes.manager.MainFrame.Navigate(new Pages.ListPage());
        }

    }
}
