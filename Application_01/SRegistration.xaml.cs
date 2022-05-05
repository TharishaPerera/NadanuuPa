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
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for SRegistration.xaml
    /// </summary>
    public partial class SRegistration : UserControl
    {
        public SRegistration()
        {
            InitializeComponent();
            Loaded += SRegistration_Loaded;
        }

        private void SRegistration_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
            connection.Open();

            command = new SqlCommand("Select max(student_id) from student" , connection);
            SqlDataReader dr = command.ExecuteReader();

            if (dr.Read())
            {
                if(dr[0] != System.DBNull.Value)
                {
                    txt_id.Text =(Convert.ToInt32(dr[0].ToString())+1).ToString();
                }
                else
                {
                    txt_id.Text = "1";
                }
            }
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                String gender = txt_gender.Text.ToUpper();

                if (string.IsNullOrEmpty(txt_id.Text))
                {
                    txt_err.Text = "Student ID cannot be blank";
                    txt_id.Focus();
                }
                else if (string.IsNullOrEmpty(txt_name.Text))
                {
                    txt_err.Text = "Student name cannot be empty";
                    txt_name.Focus();
                }
                else if (txt_name.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Doctor name cannot have numbers";
                    txt_name.Focus();
                }
                else if (string.IsNullOrEmpty(txt_gender.Text))
                {
                    txt_err.Text = "Student gender cannot be empty";
                    txt_gender.Focus();
                }
                else if (txt_gender.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Student gender cannot have letters";
                    txt_gender.Focus();
                }
                else if (gender != "MALE" && gender != "FEMALE")
                {
                    txt_err.Text = "Student gender must be 'Male' or 'Female'";
                    txt_gender.Focus();
                }
                else if (string.IsNullOrEmpty(txt_grade.Text))
                {
                    txt_err.Text = "Student grade cannot be empty";
                    txt_grade.Focus();
                }
                else if (txt_grade.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student grade cannot have letters";
                    txt_grade.Focus();
                }
                else if (Convert.ToInt32(txt_grade.Text) > 13)
                {
                    txt_err.Text = "Maximum student grade is 13 ";
                    txt_grade.Focus();
                }
                else if (!Regex.IsMatch(txt_tp.Text, @"^(?:7|0|(?:\+94))[0-9]{8,9}$"))
                {
                    txt_err.Text = "Enter valid telephone number";
                    txt_tp.Focus();
                }
                else if (string.IsNullOrEmpty(txt_address.Text))
                {
                    txt_err.Text = "Address cannot be empty";
                    txt_address.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("insert into student values ('" + txt_id.Text + "', '" + txt_name.Text + "', '" + gender + "', '" + txt_grade.Text + "', '" + txt_tp.Text + "', '" + txt_address.Text + "')", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data saved successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be saved. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    txt_name.Clear();
                    txt_gender.Clear();
                    txt_grade.Clear();
                    txt_tp.Clear();
                    txt_address.Clear();
                    txt_err.Text = null;
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database error. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Occured. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_id.Clear();
            txt_name.Clear();
            txt_gender.Clear();
            txt_grade.Clear();
            txt_tp.Clear();
            txt_address.Clear();
            txt_err.Text = "";
        }

    }
}
