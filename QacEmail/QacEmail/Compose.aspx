<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QacEmail.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <form id="form1" runat="server">
    <div>
        <asp:Button ID="ButtonDiscard" runat="server" Text="Discard" /> <br />
        To : <asp:TextBox ID="TextBoxTo" runat="server"></asp:TextBox><br />
        Cc : <asp:TextBox ID="TextBoxCc" runat="server"></asp:TextBox><br />
        Subject : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <textarea id="TextAreaMailBody" cols="20" rows="2"></textarea>
    </div>
    </form>


</asp:Content>


