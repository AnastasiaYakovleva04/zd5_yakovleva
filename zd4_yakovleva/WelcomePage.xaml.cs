using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static System.Net.Mime.MediaTypeNames;

namespace zd4_yakovleva
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class WelcomePage : ContentPage
    {
        public WelcomePage()
        {
            InitializeComponent();
            cb.IsChecked = true;
        }
        async void OnSignInClicked(object sender, EventArgs e)
        {
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
            {
                DisplayAlert("Ошибка", "Все поля должны быть заполнены", "OK");
                return;
            }
            try
            {
                CheckValidUsername(username);
                CheckValidPassword(password);

            }
            catch(Exception ex)
            {
                DisplayAlert("Ошибка", ex.Message, "OK");
                return;
            }
            if (cb.IsChecked)
                NavigateToTabbedPage(username);
            else
            {
                DisplayAlert("Предупреждение","Нажмите галочку, чтобы ваше имя было отображено", "OK");
                return;
            }

        }

        private async Task NavigateToTabbedPage(string username)
        {
            var tabbedPage = new MainPage(username);
            await Navigation.PushAsync(tabbedPage);
        }
        public static void CheckValidUsername(string username)
        {
            if (username.Length<2)
                throw new Exception("Минимальная длина имени пользователя 2 символа");
            if (username.Length > 15)
                throw new Exception("Максимальная длина имени пользователя 15 символов");

            foreach(char c in username)
            {
                if (char.IsLetter(c) || c == ' ')
                    continue;
                else
                    throw new Exception("Имя пользователя может содержать только буквы и пробелы");
            }
        }
        public static void CheckValidPassword(string password)
        {
            if (password.Length < 8)
                throw new Exception("Пароль должен содержать минимум 8 символов");
            if (password.Length > 16)
                throw new Exception("Пароль должен содержать максимум 16 символов");
        }
    }
}