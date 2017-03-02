<%@ Page Title="" Language="C#" MasterPageFile="~/pow.Master" AutoEventWireup="true" CodeBehind="Regester.aspx.cs" Inherits="QacEmail.Regester" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <form id="form1" runat="server">
    <div>
        Email : <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox><br />
        Password :<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox><br />
        Reenter Password: <asp:TextBox ID="TextBoxRePassword" runat="server"></asp:TextBox><br />
        Name : <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox><br />
        Address : <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox><br />
        <asp:Button ID="ButtonCreate" runat="server" Text="Create Account" />
    </div>
    </form>
</asp:Content>
