<%@ Page Title="Formulário" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeFile="Formulario.aspx.cs" Inherits="Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Preencha seus dados</h2>

  <asp:ValidationSummary
    ID="ValidationSummary1"
    runat="server"
    CssClass="error"
  />

  <div>
    <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator
      ID="rfvNome"
      runat="server"
      ControlToValidate="txtNome"
      ErrorMessage="O nome é obrigatório."
    />
  </div>

  <div>
    <asp:Label
      ID="lblDataNascimento"
      runat="server"
      Text="Data de Nascimento:"
    ></asp:Label>
    <asp:TextBox ID="txtDataNascimento" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator
      ID="rfvDataNascimento"
      runat="server"
      ControlToValidate="txtDataNascimento"
      ErrorMessage="A data de nascimento é obrigatória."
    />
    <asp:RangeValidator
      ID="rvDataNascimento"
      runat="server"
      ControlToValidate="txtDataNascimento"
      ErrorMessage="Você deve ter mais de 18 anos."
      Type="Date"
      MinimumValue="01/01/1900"
      MaximumValue="01/01/2006"
    />
  </div>

  <div>
    <asp:Label ID="lblCPF" runat="server" Text="CPF:"></asp:Label>
    <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator
      ID="rfvCPF"
      runat="server"
      ControlToValidate="txtCPF"
      ErrorMessage="O CPF é obrigatório."
    />
    <asp:RegularExpressionValidator
      ID="revCPF"
      runat="server"
      ControlToValidate="txtCPF"
      ErrorMessage="CPF inválido."
      ValidationExpression="\d{3}\.\d{3}\.\d{3}-\d{2}"
    />
  </div>

  <div>
    <asp:Label
      ID="lblTipoSeguro"
      runat="server"
      Text="Tipo de Seguro:"
    ></asp:Label>
    <asp:DropDownList ID="ddlTipoSeguro" runat="server">
      <asp:ListItem Text="Selecione" Value=""></asp:ListItem>
      <asp:ListItem Text="Seguro de Vida" Value="Vida"></asp:ListItem>
      <asp:ListItem
        Text="Seguro de Morte Acidental"
        Value="MorteAcidental"
      ></asp:ListItem>
      <asp:ListItem
        Text="Seguro de Acidentes Pessoais"
        Value="AcidentesPessoais"
      ></asp:ListItem>
      <asp:ListItem Text="Seguro de Saúde" Value="Saude"></asp:ListItem>
      <asp:ListItem Text="Seguro de Automóvel" Value="Automovel"></asp:ListItem>
      <asp:ListItem
        Text="Seguro Residencial"
        Value="Residencial"
      ></asp:ListItem>
      <asp:ListItem
        Text="Seguro Patrimonial"
        Value="Patrimonial"
      ></asp:ListItem>
      <asp:ListItem
        Text="Seguro Empresarial"
        Value="Empresarial"
      ></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator
      ID="rfvTipoSeguro"
      runat="server"
      ControlToValidate="ddlTipoSeguro"
      InitialValue=""
      ErrorMessage="Selecione um tipo de seguro."
    />
  </div>

  <br />

  <asp:Button
    ID="btnCalcular"
    runat="server"
    Text="Calcular"
    OnClick="btnCalcular_Click"
  />
</asp:Content>
