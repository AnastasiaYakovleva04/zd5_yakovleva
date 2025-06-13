using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using static Xamarin.Forms.Device;
using Xamarin.Forms.StyleSheets;

namespace zd4_yakovleva
{
    public partial class MainPage : TabbedPage
    {
        public MainPage(string username)
        {
            InitializeComponent();
            BarBackgroundColor = Color.Blue;
            Title = $"Привет, {username}!";
            this.Resources.Add(StyleSheet.FromResource("styles.css", typeof(MainPage).GetTypeInfo().Assembly));
        }

    }
}
