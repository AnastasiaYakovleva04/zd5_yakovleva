using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace zd4_yakovleva
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page2 : ContentPage
    {
        public Page2()
        {
            InitializeComponent();
            CurrencyDatePicker.Date = DateTime.Now;
        }
        private void CurrencyDatePicker_DateSelected(object sender, DateChangedEventArgs e)
        {
            DateLabel.Text = e.NewDate.ToString("dd/MM/yyyy");
        }
    }
}