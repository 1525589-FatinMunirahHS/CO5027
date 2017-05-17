<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <p> &nbsp;</p>
    

   <div>
    <h2>
        <asp:Literal ID="litName" runat="server"></asp:Literal>
    </h2>
        <p><asp:Literal ID="litPrice" runat="server"></asp:Literal></p>
        
            <p>
                <asp:Literal ID="litDescription" runat="server"></asp:Literal>

            </p>
        
            <p>
                <asp:Image ID="imageControl"  runat="server"/>
        </p>
    </div>


</asp:Content>
