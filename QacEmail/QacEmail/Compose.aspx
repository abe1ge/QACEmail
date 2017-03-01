<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Compose.aspx.cs" Inherits="QacEmail.Compose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script>

</script>

    <form id="form1" runat="server">
    <div>
        <asp:Button ID="ButtonDiscard" runat="server" Text="Discard" /> <br />
        To : <asp:TextBox ID="TextBoxTo" runat="server"></asp:TextBox><br />
        Cc : <asp:TextBox ID="TextBoxCc" runat="server"></asp:TextBox><br />
        Subject : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <textarea id="TextAreaMailBody" name="TextAreaMailBody" cols="20" rows="2"></textarea> 
        <br />
        <asp:Button ID="ButtonSend" runat="server" Text="Send" OnClick="ButtonSend_Click" />
        <br />
        <asp:Label ID="Labeltest" runat="server" Text="Label"></asp:Label>
    </div>
    </form>


</asp:Content>


