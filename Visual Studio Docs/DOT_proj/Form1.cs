using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Linq;
using System.Drawing.Text;
using System.Security.Cryptography.X509Certificates;
using Microsoft.VisualBasic.ApplicationServices;
using System.Security.Cryptography.Xml;
using System.Reflection.Metadata.Ecma335;
using System.Collections;
using System.Xml;
using Microsoft.VisualBasic;

namespace DOT_proj
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //declare initial variables

            int result = 0;
            List<int> myList = new List<int>();

            //connect to SQLServer
            string connetionString;         
            SqlConnection cnn;

            //On Line 46:
            //Change Source to name of the SQL Server.
            //Change Initial Catalog to name of the Database. 
            //Change User ID and Password to username and password of a user who has access to the created Database

            connetionString = @"Data Source=EJSSURFACELAPTO\SQLEXPRESS;Initial Catalog=DOTproj;User ID=test;Password=root;Trusted_Connection=True";
            cnn = new SqlConnection(connetionString);
            {
                //Open SQL Connection

                cnn.Open();

                //Run stored procedure for first user input

                SqlCommand cmd = new SqlCommand("dbo.county1", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@FIPS_code", county1.Text));

                //Run stored procedure for second user input

                SqlCommand cmd2 = new SqlCommand("dbo.county2", cnn);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.Add(new SqlParameter("@FIPS_code", county2.Text));

                //Convert SQL Output for first input to list of Ints

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        foreach (var i in Enumerable.Range(0, 7))
                        {
                            int read = (rdr[i] as int?) ?? 0;
                            myList.Add(read);
                        }
                    }       
                }

                //Convert SQl Output for second input to int

                using (SqlDataReader rdr2 = cmd2.ExecuteReader())
                {
                    while (rdr2.Read())
                    {
                        int map_number = rdr2.GetInt32(0);

                        //Parse through list of input1 to find if input2 is adjacent
                        
                        foreach (var i in myList)
                        {
                            if (map_number == i)
                            {
                                result++;
                            }
                        }
                    }

                }

                //Take boolean value of result to produce True or False adjacency

                bool output = Convert.ToBoolean(result);
                MessageBox.Show(output.ToString()); 

                //End sql connection

                cnn.Close();
            }
        }
    }

}