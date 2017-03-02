<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="QacEmail.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            Email:
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
            
            <asp:Button ID="Button" runat="server" Text="Search" OnClick="Button_Click" />
            <br />
            <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
            <br />
            <asp:Panel ID="Security" runat="server" Visible="false" >

                <asp:Label ID="LabelQues" runat="server" Text="Question :"></asp:Label>
                <br />
                <asp:Label ID="LabelAns" runat="server" Text="Answer :"></asp:Label>
                <asp:TextBox ID="TextBoxSAnswer" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="ButtonSecurity" runat="server" Text="Check Answer" OnClick="ButtonReset_Click" />
            </asp:Panel>
            <br />
            <asp:Panel ID="PanelRestPass" runat="server" Visible="false">
                Password :<asp:TextBox ID="TextBoxPass" runat="server"></asp:TextBox>
                <br />
                ReEnter Password :<asp:TextBox ID="TextBoxRePass" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="LabelError2" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button ID="ButtonPrest" runat="server" Text="Reset" OnClick="ButtonPrest_Click" />
            </asp:Panel>
        </div>
    </form>
</asp:Content>
