using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;

namespace zd4_yakovleva
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page1 : ContentPage
    {
        public string SelectedItem { get; private set; }
        public double SliderValue { get; private set; }
        public double UserMaxValue { get; private set; }

        public Page1()
        {
            InitializeComponent();

            PaymentTypePicker.SelectedIndex = 0;
            SelectedItem = PaymentTypePicker.Items[PaymentTypePicker.SelectedIndex];
            SliderValue = PercentSlider.Value;
            UserMaxValue = PercentSlider.Value;

        }
        //обработчик события перетягивания слайдера
        private void PercentSlider_ValueChanged(object sender, ValueChangedEventArgs e)
        {
            PercentLabel.Text = $"{e.NewValue:F0}%";
            SliderValue = e.NewValue;
            if (e.NewValue > UserMaxValue)
                UserMaxValue = e.NewValue;
        }
        //нажатие на кнопку рассчитать
        private void CalculateButton_Clicked(object sender, EventArgs e)
        {
            double creditSum = 0;
            int term = 0;
            double percent = (int)PercentSlider.Value;
            string paymentType = PaymentTypePicker.SelectedItem?.ToString();

            try
            {
                if (string.IsNullOrEmpty(CreditSumEntry.Text) ||
                    string.IsNullOrEmpty(TermEntry.Text) ||
                    PaymentTypePicker.SelectedItem == null)
                {
                    DisplayAlert("Ошибка", "Все поля должны быть заполнены", "OK");
                    return;
                }

                try
                {
                    creditSum = double.Parse(CreditSumEntry.Text);
                    term = int.Parse(TermEntry.Text);
                }
                catch (FormatException)
                {
                    DisplayAlert("Ошибка", "Срок должен быть целым числом", "OK");
                    return;
                }

                try
                {
                    CreditCalculator.CheckValidCreditSum(creditSum);
                    CreditCalculator.CheckValidTerm(term);
                }
                catch (Exception ex) 
                {
                    DisplayAlert("Ошибка", ex.Message, "OK");
                    return;
                }

                double monthlyPayment = CreditCalculator.CalculateAnnuityMonthlyPayment(creditSum, term, percent);
                double totalSum = CreditCalculator.CalculateAnnuityTotalSum(monthlyPayment, term);
                double overpayment = CreditCalculator.CalculateAnnuityOverpayment(creditSum, monthlyPayment, term);

                if (paymentType == "Аннуитетный")
                {
                    MonthlyPaymentLabel.Text = monthlyPayment.ToString();
                    TotalSumLabel.Text = totalSum.ToString();
                    OverpaymentLabel.Text = overpayment.ToString();
                }
                else
                {
                    MonthlyPaymentLabel.Text = "";
                    TotalSumLabel.Text = totalSum.ToString();
                    OverpaymentLabel.Text = overpayment.ToString();
                }
            }
            catch (Exception ex)
            {
                MonthlyPaymentLabel.Text = "...";
                TotalSumLabel.Text = "...";
                OverpaymentLabel.Text = "...";
                DisplayAlert("Ошибка", ex.Message, "OK");
            }
        }
        void OnPickerSelectedIndexChanged(object sender, EventArgs e)
        {
            if (PaymentTypePicker.SelectedIndex != -1)
                SelectedItem = PaymentTypePicker.Items[PaymentTypePicker.SelectedIndex];
        }
    }
}