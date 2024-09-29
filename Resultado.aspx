<%@ Page Title="Resultado" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Resultado do Cálculo do Seguro</h2>

  <asp:Label ID="lblResultado" runat="server" Text="Resultado:"></asp:Label>

  <br /><br />

  <asp:Button
    ID="btnVoltar"
    runat="server"
    Text="Voltar ao Formulário"
    PostBackUrl="~/Formulario.aspx"
  />
</asp:Content>
