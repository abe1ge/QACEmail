
<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="QacEmail.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <form id="form1" runat="server">
    <div>
        Email: <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox> <br/>
        Question :  <br />
        Answer : <asp:TextBox ID="TextBoxSAnswer" runat="server"></asp:TextBox>
    </div>
    </form>
</asp:Content>
