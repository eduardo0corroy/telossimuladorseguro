using System;
using System.Globalization;

public partial class Resultado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string nome = Session["Nome"].ToString();
            DateTime dataNascimento = (DateTime)Session["DataNascimento"];
            string cpf = Session["CPF"].ToString();
            string tipoSeguro = Session["TipoSeguro"].ToString();

            double valorSeguro = CalcularValorSeguro(tipoSeguro);

            lblResultado.Text = string.Format(CultureInfo.GetCultureInfo("pt-BR"),
                "Nome: {0}<br />Data de Nascimento: {1:dd/MM/yyyy}<br />CPF: {2}<br />Tipo de Seguro: {3}<br />Valor Total: {4:C}",
                nome, dataNascimento, cpf, tipoSeguro, valorSeguro);
        }
    }

    private double CalcularValorSeguro(string tipoSeguro)
    {
        double valorBase = 1000.00;

        switch (tipoSeguro)
        {
            case "Vida":
                return valorBase * 0.80;
            case "MorteAcidental":
                return valorBase * 0.90;
            case "AcidentesPessoais":
                return valorBase * 0.50;
            case "Saude":
                return valorBase * 0.40;
            case "Automovel":
                return valorBase * 2.50;
            case "Residencial":
                return valorBase * 0.60;
            case "Patrimonial":
                return valorBase * 1.20;
            case "Empresarial":
                return valorBase * 1.50;
            default:
                return valorBase;
        }
    }
}
