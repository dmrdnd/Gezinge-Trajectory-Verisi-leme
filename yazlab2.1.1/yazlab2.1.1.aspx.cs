using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace yazlab2._1._1
{
    public partial class yazlab2__1__1 : System.Web.UI.Page
    {
        public static string[] latlng;
        protected void Page_Load(object sender, EventArgs e)
        {/*
            string text;
            string dosyakonumu = "C:\\latlng.txt";
            char[] ayraclar = new char[] { '\n', ',' };

            if (File.Exists(dosyakonumu))
            {
                StreamReader sr = File.OpenText(dosyakonumu);
                text = sr.ReadToEnd(); //text dosyasının tamamını okur
                latlng = text.Split(ayraclar); //ayraclar dizisi içinde karakterlere göre ayırır

                foreach(string ltln in latlng)
                {
                 ListBox1.Items.Add(ltln);
                   
                }
              

            }
    */
        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
          //  string[] latlng;
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //initMap();
        }

     
      

        
        }
    }