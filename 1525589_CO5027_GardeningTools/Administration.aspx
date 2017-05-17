<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.Administration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1> Administration 
         
     </h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="157px" Width="1125px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ViewProduct.aspx?id={0}" InsertVisible="False" Text="Image" />
        </Columns>
         </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionstring %>" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description" InsertCommand="INSERT INTO [Product] ([Name], [Price], [Description]) VALUES (@Name, @Price, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Price] = @Price, [Description] = @Description WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Price] = @original_Price AND [Description] = @original_Description">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Description" Type="String" />
            </UpdateParameters>
     </asp:SqlDataSource>
        <br />
   
         <br />
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" MaxLength="100" Width="284px"></asp:TextBox>
    
    <br />

        <div>
            <asp:Label ID="lblPrice" runat="server" Text="Price" ></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server" TextMode="MultiLine" Height="16px" style="margin-top: 0px" Width="219px"></asp:TextBox>
        </div>
       <br />
    <div>
            <asp:Label ID="lblDescription" runat="server" Text="Description" ></asp:Label>
            <asp:TextBox ID="TxtDescription" runat="server" TextMode="MultiLine" Height="43px" style="margin-top: 0px" Width="372px"></asp:TextBox>
        </div>
    <br />
     <asp:FileUpload ID="fileuploadControl" runat="server" Width="395px" />
  
            <div>
                  <br />
         <asp:Button ID="btnAddEntry" runat="server" Text="Add Entry" OnClick="btnAddEntry_Click" Width="127px" />
        </div>
        <p>
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
</asp:Content>


