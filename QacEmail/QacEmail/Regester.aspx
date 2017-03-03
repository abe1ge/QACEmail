<%@ Page Title="" Language="C#" MasterPageFile="~/pow.Master" AutoEventWireup="true" CodeBehind="Regester.aspx.cs" Inherits="QacEmail.Regester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server" >
        <div class="form-horizontal">
            <fieldset>

                <!-- Form Name -->
                <legend>Form Name</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Email">Email</label>
                    <div class="col-md-4">
                        <input id="Email" name="Email" type="text" placeholder="email@qa.com" class="form-control input-md" required=""/>
                        <span class="help-block">enter your new email address</span>
                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="passwordinput">Password </label>
                    <div class="col-md-4">
                        <input id="passwordinput" name="passwordinput" type="password" placeholder="" class="form-control input-md" required=""/>
                        <span class="help-block">Enter password</span>
                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Repasswordinput">Renter Password</label>
                    <div class="col-md-4">
                        <input id="Repasswordinput" name="Repasswordinput" type="password" placeholder="" class="form-control input-md" required=""/>
                        <span class="help-block">Re-Enter your password</span>
                    </div>
                </div>

                <!-- name input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="nameinput">Name</label>
                    <div class="col-md-4">
                        <input id="nameinput" name="nameinput" type="text" placeholder="" class="form-control input-md" required=""/>
                    </div>
                </div>

                 <!-- Security questions input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="SecQ">Security Question</label>
                    <div class="col-md-4">
                        <input id="SecQ" name="SecQ" type="text" placeholder="" class="form-control input-md" required=""/>
                         <span class="help-block">Enter Security Question</span>
                    </div>
                </div>

                <!-- Security Answer input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="SecA">Security Answer</label>
                    <div class="col-md-4">
                        <input id="SecA" name="SecA" type="text" placeholder="" class="form-control input-md" required=""/>
                         <span class="help-block">Enter Security Answer</span>
                    </div>
                </div>
                
                <!-- Address area -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Addressarea">Address</label>
                    <div class="col-md-4">
                        <textarea class="form-control" id="Addressarea" name="Addressarea"></textarea>
                    </div>
                </div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="Regesterbutton"></label>
                    <div class="col-md-4">
                        <asp:Button ID="Regesterbutton" name="Regesterbutton" runat="server" class="btn btn-primary" Text="Button" OnClick="Regesterbutton_Click" />
                    </div>
                </div>
                 
            </fieldset>
        </div>
    </form>
</asp:Content>
