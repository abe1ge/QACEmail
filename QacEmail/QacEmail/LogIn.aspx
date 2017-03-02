<%@ Page Title="" Language="C#" MasterPageFile="~/pow.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="QacEmail.LogIn" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <br />
            Email :<asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            <br />
            Password :<asp:TextBox ID="TextBoxPassword" runat="server" Type="password"></asp:TextBox><br />
            <asp:Label ID="lb_log_error" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="ButtonLogIn" runat="server" Text="Log In" OnClick="ButtonLogIn_Click" />

            <br />
            Rember Password :
            <asp:CheckBox ID="CheckBoxRemeberPassword" runat="server" />
            <br />
            <a href="ForgotPassword.aspx">Forgot Password</a>
        </div>
    </form>
</asp:Content>

