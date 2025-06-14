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
    public partial class MainPage:CarouselPage
    {
        public MainPage(string username)
        {
            InitializeComponent();
            Title = $"Привет, {username}!";
            this.Resources.Add(StyleSheet.FromResource("styles.css", typeof(MainPage).GetTypeInfo().Assembly));

            var page1 = new Page1();
            var page3 = new Page3("", 0, 0);

            CurrentPageChanged += (s, e) =>
            {
                if (CurrentPage == page3)
                {
                    var selectedItem = page1.SelectedItem;
                    var sliderValue = page1.SliderValue;
                    var userMaximumValue = page1.UserMaxValue;

                    page3.SelectedItemText = $"{selectedItem} платеж";
                    page3.DescriptionText(selectedItem);
                    page3.SliderValueText = $"Текущее значение процентной ставки: {sliderValue:F0}%";
                    page3.UserMaxValueText = $"Максимальная введенная процентная ставка: {userMaximumValue:F0}%";

                    page3.BindingContext = null;
                    page3.BindingContext = page3;
                }
            };

            Children.Add(page1);
            Children.Add(new Page2());
            Children.Add(page3);


        }

    }
}
