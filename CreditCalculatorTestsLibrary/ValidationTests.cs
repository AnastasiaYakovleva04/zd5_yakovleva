using zd4_yakovleva;
namespace CreditCalculatorTestsLibrary
{
    [TestClass]
    public class ValidationTests
    {
        //-----тесты поля creditSum-----//
        [TestMethod]
        public void CreditSum_100_Exception()
        {
            double credit = 100;
            try
            {
                CreditCalculator.CheckValidCreditSum(credit);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Минимальная сумма кредита 10 000 рублей", ex.Message);
            }
        }
        [TestMethod]
        public void CreditSum_1000000000_Exception()
        {
            double credit = 1000000000;
            try
            {
                CreditCalculator.CheckValidCreditSum(credit);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Максимальная сумма кредита 100 000 000 рублей", ex.Message);
            }
        }
        [TestMethod]
        public void CreditSum_1000000_Correct()
        {
            double credit = 1000000;
            try
            {
                CreditCalculator.CheckValidCreditSum(credit);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void CreditSum_100000000_Correct()
        {
            double credit = 100000000;
            try
            {
                CreditCalculator.CheckValidCreditSum(credit);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void CreditSum_10000_Correct()
        {
            double credit = 10000;
            try
            {
                CreditCalculator.CheckValidCreditSum(credit);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        //-----тесты поля term-----//
        [TestMethod]
        public void Term_0_Exception()
        {
            int term = 0;
            try
            {
                CreditCalculator.CheckValidTerm(term);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Минимальный срок 1 месяц", ex.Message);
            }
        }
        [TestMethod]
        public void Term_400_Exception()
        {
            int term = 400;
            try
            {
                CreditCalculator.CheckValidTerm(term);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Максимальный срок 360 месяцев (30 лет)", ex.Message);
            }
        }
        [TestMethod]
        public void Term_12_Correct()
        {
            int term = 12;
            try
            {
                CreditCalculator.CheckValidTerm(term);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Term_1_Correct()
        {
            int term = 1;
            try
            {
                CreditCalculator.CheckValidTerm(term);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Term_360_Correct()
        {
            int term = 360;
            try
            {
                CreditCalculator.CheckValidTerm(term);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        //------тесты к полю username-------//
        [TestMethod]
        public void Username_Standart_Correct()
        {
            string username = "Ваня Петров";
            try
            {
                WelcomePage.CheckValidUsername(username);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Username_MinLength_Correct()
        {
            string username = "Ян";
            try
            {
                WelcomePage.CheckValidUsername(username);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Username_MaxLength_Correct()
        {
            string username = "Друг у человека";
            try
            {
                WelcomePage.CheckValidUsername(username);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Username_1char_Exception()
        {
            string username = "Я";
            try
            {
                WelcomePage.CheckValidUsername(username);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Минимальная длина имени пользователя 2 символа", ex.Message);
            }
        }
        [TestMethod]
        public void Username_16char_Exception()
        {
            string username = "Деренский парень";
            try
            {
                WelcomePage.CheckValidUsername(username);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Максимальная длина имени пользователя 15 символов", ex.Message);
            }
        }
        [TestMethod]
        public void Username_NotAllowedChars_Exception()
        {
            string username = "Адольф1488!";
            try
            {
                WelcomePage.CheckValidUsername(username);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Имя пользователя может содержать только буквы и пробелы", ex.Message);
            }
        }
        //------тесты к полю username-------//
        [TestMethod]
        public void Password_Standart_Correct()
        {
            string password = "q1w2e3r4t5";
            try
            {
                WelcomePage.CheckValidPassword(password);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Password_MinChars_Correct()
        {
            string password = "q1w2e3r4";
            try
            {
                WelcomePage.CheckValidPassword(password);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Password_MaxChars_Correct()
        {
            string password = "q1w2e3r4q1w2e3r4";
            try
            {
                WelcomePage.CheckValidPassword(password);
            }
            catch (Exception ex)
            {
                Assert.Fail(ex.Message);
            }
        }
        [TestMethod]
        public void Password_4chars_Exception()
        {
            string password = "qad6";
            try
            {
                WelcomePage.CheckValidPassword(password);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Пароль должен содержать минимум 8 символов", ex.Message);
            }
        }
        [TestMethod]
        public void Password_20chars_Exception()
        {
            string password = "qad6q1w2e3r4q1w2e3r4";
            try
            {
                WelcomePage.CheckValidPassword(password);
                Assert.Fail("Ожидалось исключение");
            }
            catch (Exception ex)
            {
                Assert.AreEqual("Пароль должен содержать максимум 16 символов", ex.Message);
            }
        }
    }
}