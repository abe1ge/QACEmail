
<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QacEmail.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
    <div>
    <br />
        Email :<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox> <br />
        Password :<asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox><br />
        <asp:Button ID="ButtonLogIn" runat="server" Text="Button" /><br />
        Rember Password : <asp:CheckBox ID="CheckBoxRemeberPassword" runat="server" /> <br />
        <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password</asp:HyperLink>
    </form>
</asp:Content>

 