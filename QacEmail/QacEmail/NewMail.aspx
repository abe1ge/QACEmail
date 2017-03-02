<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="NewMail.aspx.cs" Inherits="QacEmail.NewMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<form id="form1" class="form-horizontal" runat="server">  
<fieldset>

<!-- Form Name -->
<legend>Compose New Email</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="to">To</label>  
  <div class="col-md-4">
  <input id="to" name="to" type="text" placeholder="" class="form-control input-md" required="">
  <span class="help-block">use ',' to add mulitiple emails</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Subject">Subject</label>  
  <div class="col-md-4">
  <input id="Subject" name="Subject" type="text" placeholder="Subject" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="mail"></label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="mail" name="mail"> hi,</textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-sm-offset-3 col-md-4 control-label" for="Send_Bt"></label>
  <div class="col-md-4">
      <asp:Button ID="Send_Bt" name="Send_Bt" runat="server" class="btn btn-primary" Text="Send" OnClick="Send_Bt_Click" />
  </div>
</div>

<!-- Error Message -->
<div class="form-group">
  <label class="col-md-4 control-label" for="mail"></label>
  <div class="col-md-4">                     
      <%
          foreach(string add in error)
          {
              Response.Write(" <div class='alert alert-danger'>");
              Response.Write("The Following email does not exisit <strong>"+add+"</strong></div>");
          }
           %>

  </div>
</div>
  <a href="#">News <span class="badge">5</span></a><br>
  <a href="#">Comments <span class="badge">10</span></a><br>
  <a href="#">Updates <span class="badge">2</span></a>
</fieldset>
</form>

</asp:Content>
