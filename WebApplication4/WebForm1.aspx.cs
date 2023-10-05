using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int idCuenta = Convert.ToInt32(TextBox1.Text);
            float monto = Convert.ToInt64(TextBox2.Text);
            string tipo = DropDownList1.SelectedValue;
            agregarRegistroContable(idCuenta,monto,tipo);
        }
        protected void agregarRegistroContable(int IdCuenta, float monto, string tipo) 
        {
            this.SqlDataSource1.InsertParameters["IdCuenta"].DefaultValue = IdCuenta.ToString();
            this.SqlDataSource1.InsertParameters["Monto"].DefaultValue = monto.ToString();
            this.SqlDataSource1.InsertParameters["Tipo"].DefaultValue = tipo.ToString();
        }
        

    }
}