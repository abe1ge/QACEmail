<%@ Page Title="" Language="C#" MasterPageFile="~/pow.Master" AutoEventWireup="true" CodeBehind="inbox.aspx.cs" Inherits="QacEmail.inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:Button ID="btn_del" runat="server" Text="Delete" OnClick="btn_del_Click" />
        <asp:Button ID="btn_logout" runat="server" Text="Log out" OnClick="btn_logout_Click" />
        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:InboxConnectionString %>' SelectCommand="SELECT [email], [mailFrom], [subj], [mailDate] FROM [emails] ORDER BY [mailDate] DESC"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="mailFrom" HeaderText="mailFrom" SortExpression="mailFrom"></asp:BoundField>
                <asp:HyperLinkField HeaderText="subject" DataTextField="subj" DataNavigateUrlFormatString="~\viewMail.aspx?Id={0}" DataNavigateUrlFields="email" />
                <asp:BoundField DataField="mailDate" HeaderText="mailDate" SortExpression="mailDate"></asp:BoundField>
            </Columns>
        </asp:GridView>
    
</asp:Content>
