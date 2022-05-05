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

namespace Application_01
{
    /// <summary>
    /// Interaction logic for Fees.xaml
    /// </summary>
    public partial class Fees : UserControl
    {
        public Fees()
        {
            InitializeComponent();
            Loaded += Fees_Loaded;
        }

        private void Fees_Loaded(object sender, RoutedEventArgs e)
        {
            txt_feeType.Text = "Enter Fees";
            FeesStack.Children.Clear();
            EnterFee obj = new EnterFee();
            FeesStack.Children.Add(obj);
        }

        private void btn_enterFee_Click(object sender, RoutedEventArgs e)
        {
            txt_feeType.Text = "Enter Fees";
            FeesStack.Children.Clear();
            EnterFee obj = new EnterFee();
            FeesStack.Children.Add(obj);
        }

        private void btn_viewFee_Click(object sender, RoutedEventArgs e)
        {
            txt_feeType.Text = "View Fees";
            FeesStack.Children.Clear();
            ViewFee obj = new ViewFee();
            FeesStack.Children.Add(obj);
        }
    }
}
