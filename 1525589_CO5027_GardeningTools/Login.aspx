<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
     <h1 class="SignUp"> Sign Up</h1>
     <asp:Panel ID="Panel1" DefaultButton="BtnSignUp" runat="server">
    <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TxtEmail" runat="server" Width="361px"></asp:TextBox>
    <br />
    <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="TxtPassword" runat="server" Width="257px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Label ID="LblComfirm" runat="server" Text="ComfirmPassword"></asp:Label>
    <asp:TextBox ID="TxtComfirm" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="BtnSignUp" runat="server" Text="Register" ValidationGroup="SignUp" OnClick="BtnSignUp_Click" />
    <br />
    <br />
    <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </asp:Panel>
    <br />
    <br />


 <h1 class="Login"> Login</h1>
<asp:Panel ID="Login" DefaultButton="BtnLogin" runat="server">
<asp:Label ID="LblEmail2" runat="server" Text="Email"></asp:Label>
<asp:TextBox ID="TxtEmail2" runat="server" Width="333px"></asp:TextBox>
<br />
<asp:Label ID="LblText" runat="server" Text="Password"></asp:Label>
<asp:TextBox ID="TxtPassword2" runat="server" Width="228px" TextMode="Password"></asp:TextBox>
<br />
<asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="BtnLogin" OnClick="btnLogin_Click" />
<br />
<asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    <br />
    <br />
    <br />
    <asp:Button ID="btnAdmin" runat="server" Text="Administration" Width="140px" OnClick="btnAdmin_Click" />

</asp:Panel>
   

</asp:Content>


