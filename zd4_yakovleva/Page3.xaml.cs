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
    public partial class Page3 : ContentPage
    {
        public string SelectedItemText { get; set; }
        public string SliderValueText { get; set; }
        public string UserMaxValueText { get; set; }
        public Page3(string selectedItem, double sliderValue, double userMaximumValue)
        {
            InitializeComponent();
            BindingContext = this;
        }
        public void DescriptionText(string selectedItem)
        {
            switch (selectedItem)
            {
                case "Аннуитетный":
                    description.Text = "Это схема погашения кредита, при которой ежемесячный платёж остаётся фиксированным на весь срок. Заёмщик ежемесячно выплачивает одну и ту же сумму.";
                    break;
                case "Дифференцированный":
                    description.Text = "Это способ погашения кредита, при котором ежемесячные платежи постепенно снижаются со временем. Основная сумма долга равномерно распределяется на весь срок, а проценты начисляются на остаток долга.";
                    break;
                case "Остаточный":
                    description.Text = "Это сумма, которую заёмщик возвращает банку в конце срока кредитования. Чаще всего такая схема применяется в автокредитовании.";
                    break;
            }
        }
    }
}