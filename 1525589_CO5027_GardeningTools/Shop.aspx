<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Shop</h1>
      <br />
    <asp:Repeater ID="Repeater1" runat="server">
     <HeaderTemplate><ul></HeaderTemplate>
      <ItemTemplate>
       <li>
          <a href="<%# Eval("Id", "ViewProduct.aspx?id={0}") %>">
          <%#Eval ("Name") %>
          </a>
         </li>
         </ItemTemplate>
         <FooterTemplate></ul></FooterTemplate> 
    </asp:Repeater>
    <br />
    <br />
<asp:Button runat="server" Text="Log Out" OnClick="LogOut_Click" />
</asp:Content>
