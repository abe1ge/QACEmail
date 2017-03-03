<%@ Page Title="" Language="C#" MasterPageFile="~/pow.Master" AutoEventWireup="true" CodeBehind="viewMail.aspx.cs" Inherits="QacEmail.viewMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <fieldset>
            <!-- Form Name -->
            <legend>Form Name</legend>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="fromText">From :</label>
                <div class="col-md-4">
                    <asp:TextBox ID="FromText" runat="server" name="fromText" type="text" class="form-control input-md" disabled="disabled"></asp:TextBox>
                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="MailArea">Message</label>
                <div class="col-md-4">
                    <asp:TextBox ID="message" runat="server" class="form-control" name="MailArea" disabled="disabled"></asp:TextBox>
                </div>
            </div>

        </fieldset>
    </div>

</asp:Content>
