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
    /// Interaction logic for Attendance.xaml
    /// </summary>
    public partial class Attendance : UserControl
    {
        public Attendance()
        {
            InitializeComponent();
            Loaded += Attendance_Loaded;
        }

        private void Attendance_Loaded(object sender, RoutedEventArgs e)
        {
            txt_attendanceType.Text = "Enter Attendance";
            AttendanceStack.Children.Clear();
            EnterAttendance obj = new EnterAttendance();
            AttendanceStack.Children.Add(obj);
        }

        private void btn_enterAttendance_Click(object sender, RoutedEventArgs e)
        {
            txt_attendanceType.Text = "Enter Attendance";
            AttendanceStack.Children.Clear();
            EnterAttendance obj = new EnterAttendance();
            AttendanceStack.Children.Add(obj);
        }

        private void btn_viewAttendance_Click(object sender, RoutedEventArgs e)
        {
            txt_attendanceType.Text = "View Attendance";
            AttendanceStack.Children.Clear();
            ViewAttendance obj = new ViewAttendance();
            AttendanceStack.Children.Add(obj);
        }
    }
}
