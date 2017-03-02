<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="inbox.aspx.cs" Inherits="QacEmail.inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="inbox" runat="server">
        <asp:Button ID="btn_del" runat="server" Text="Delete" OnClick="btn_del_Click" />
        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:InboxConnectionString %>' SelectCommand="SELECT [email], [mailFrom], [subj], [mailDate] FROM [emails] ORDER BY [mailDate] DESC"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="mailFrom" HeaderText="mailFrom" SortExpression="mailFrom"></asp:BoundField>
                <asp:BoundField DataField="subj" HeaderText="subj" SortExpression="subj"></asp:BoundField>
                <asp:BoundField DataField="mailDate" HeaderText="mailDate" SortExpression="mailDate"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </form>
    
</asp:Content>
