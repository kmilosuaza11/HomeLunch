using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_formularios_form_per_rol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string seleccion;

        //seleccion captura el dato mostrado en la lista desplegable
        int rol_id;
        rol_id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
        //localizar en bd
        DataSet dataset = new DataSet();


        //seleccion recorren las filas en la grilla
        foreach (GridViewRow GVRow in GridView1.Rows)
        {
            //capturo el codigo del modulo
            int modulo_id = Convert.ToInt32(GVRow.Cells[0].Text);


            //captura del checkbox
            CheckBox cb = GVRow.FindControl("checkBox1") as CheckBox;
            if (cb != null && cb.Checked)
            {
                if (cb.Checked)
                {
                    seleccion = "si";
                }
                else
                {
                    seleccion = "no";
                }
            }



        }
    }
}