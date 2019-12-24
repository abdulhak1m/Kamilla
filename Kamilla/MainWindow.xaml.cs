using Kamilla.dbPoliceSuperDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Kamilla
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            Kamilla.dbPoliceSuperDataSet dbPoliceSuperDataSet = ((Kamilla.dbPoliceSuperDataSet)(this.FindResource("dbPoliceSuperDataSet")));
            // Load data into the table tbl_monkey_house. You can modify this code as needed.
            Kamilla.dbPoliceSuperDataSetTableAdapters.tbl_monkey_houseTableAdapter dbPoliceSuperDataSettbl_monkey_houseTableAdapter = new Kamilla.dbPoliceSuperDataSetTableAdapters.tbl_monkey_houseTableAdapter();
            dbPoliceSuperDataSettbl_monkey_houseTableAdapter.Fill(dbPoliceSuperDataSet.tbl_monkey_house);
            System.Windows.Data.CollectionViewSource tbl_monkey_houseViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("tbl_monkey_houseViewSource")));
            tbl_monkey_houseViewSource.View.MoveCurrentToFirst();
        }

        private void buttonCreate_Click(object sender, RoutedEventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connect.GetStirng()))
            {
                connection.Open();
                SqlCommand command = new SqlCommand($"INSERT INTO [tbl_monkey_house] (FIO, Address, Misconducts) VALUES ('{textBoxFIO.Text}', '{textBoxAddress.Text}', '{textBoxCountKosyak.Text}'", connection);
                command.ExecuteNonQuery();
                MessageBox.Show("Successfully!!!");
            }
        }

        private void buttonEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void buttonRemove_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Date_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
