using zd4_yakovleva;
namespace CreditCalculatorTestsLibrary
{
    [TestClass]
    public class CalculateTests
    {
        [TestMethod]
        public void MonthlyPayment_Standart_Correct()
        {
            double credit = 100000;
            int term = 12;
            double percent = 12;
            double excpected = 8884.88;
            double actual = CreditCalculator.CalculateAnnuityMonthlyPayment(credit, term, percent);
            Assert.AreEqual(excpected, actual, 2);
        }
        [TestMethod]
        public void MonthlyPayment_MinCreditMinTerm_Correct()
        {
            double credit = 10000;
            int term = 1;
            double percent = 1;
            double excpected = 10008.33;
            double actual = CreditCalculator.CalculateAnnuityMonthlyPayment(credit, term, percent);
            Assert.AreEqual(excpected, actual, 2);
        }
        [TestMethod]
        public void MonthlyPayment_MaxCreditMaxTerm_Correct()
        {
            double credit = 100000000;
            int term = 360;
            double percent = 20;
            double excpected = 1671018.69;
            double actual = CreditCalculator.CalculateAnnuityMonthlyPayment(credit, term, percent);
            Assert.AreEqual(excpected, actual, 2);
        }
        [TestMethod]
        public void MonthlyPayment_Per0_Correct()
        {
            double credit = 120000;
            int term = 12;
            double percent = 0;
            double excpected = 10000.00;
            double actual = CreditCalculator.CalculateAnnuityMonthlyPayment(credit, term, percent);
            Assert.AreEqual(excpected, actual, 2);
        }
        [TestMethod]
        public void TotalSum_Standart_Correct()
        {
            double monthlyPayment = 8884.88;
            int term = 12;
            double excpected = 106618.56;
            double actual = CreditCalculator.CalculateAnnuityTotalSum(monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }

        [TestMethod]
        public void TotalSum_MinValues_Correct()
        {
            double monthlyPayment = 1000;
            int term = 1;
            double excpected = 1000;
            double actual = CreditCalculator.CalculateAnnuityTotalSum(monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }

        [TestMethod]
        public void TotalSum_MaxValues_ReturnsCorrectValue()
        {
            double monthlyPayment = 1000000;
            int term = 360;
            double excpected = 360000000;
            double actual = CreditCalculator.CalculateAnnuityTotalSum(monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }
        [TestMethod]
        public void Overpayment_Standart_ReturnsCorrectValue()
        {
            double creditSum = 100000;
            double monthlyPayment = 8884.88;
            int term = 12;
            double excpected = 6618.56;
            double actual = CreditCalculator.CalculateAnnuityOverpayment(creditSum, monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }

        [TestMethod]
        public void Overpayment_ZeroPercent_ReturnsZero()
        {
            double creditSum = 120000;
            double monthlyPayment = 10000;
            int term = 12;
            double excpected = 0;
            double actual = CreditCalculator.CalculateAnnuityOverpayment(creditSum, monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }

        [TestMethod]
        public void Overpayment_MaxValues_ReturnsCorrectValue()
        {
            double creditSum = 100000000;
            double monthlyPayment = 1681708.33;
            int term = 360;
            double excpected = 505414998.80;
            double actual = CreditCalculator.CalculateAnnuityOverpayment(creditSum, monthlyPayment, term);
            Assert.AreEqual(excpected, actual, 2);
        }
    }
}
