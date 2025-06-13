using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace zd4_yakovleva
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            MainPage = new NavigationPage(new WelcomePage()) { BarBackgroundColor =Color.Black};
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
