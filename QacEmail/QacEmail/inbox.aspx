<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="inbox.aspx.cs" Inherits="QacEmail.inbox" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="inbox" runat="server">
        <asp:Button ID="btn_del" runat="server" Text="Delete" OnClick="btn_del_Click" />
        <asp:Button ID="btn_com" runat="server" Text="Compose" />
        <asp:GridView ID="inbox_grid" runat="server">
            <Columns>
                <asp:CheckBoxField />
                <asp:BoundField DataField="mailFrom" HeaderText="From" SortExpression="mailFrom" ReadOnly="True" />
                <asp:BoundField DataField="subj" HeaderText="Subject" SortExpression="subj" />
                <asp:BoundField DataField="mailDate" HeaderText="Date" SortExpression="mailDate" ReadOnly="True" />
            </Columns>
        </asp:GridView>
    </form>
    
</asp:Content>
