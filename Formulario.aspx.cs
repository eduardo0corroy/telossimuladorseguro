using System;
using System.Web.UI;

public partial class Formulario : Page
{
    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string nome = txtNome.Text;
            DateTime dataNascimento = DateTime.Parse(txtDataNascimento.Text);
            string cpf = txtCPF.Text;
            string tipoSeguro = ddlTipoSeguro.SelectedValue;

            Session["Nome"] = nome;
            Session["DataNascimento"] = dataNascimento;
            Session["CPF"] = cpf;
            Session["TipoSeguro"] = tipoSeguro;

            Response.Redirect("Resultado.aspx");
        }
    }
}
