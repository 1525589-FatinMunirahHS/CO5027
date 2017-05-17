<%@ Page Title="" Language="C#" MasterPageFile="~/Gardening_Tools.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="_1525589_CO5027_GardeningTools.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Cart</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="880px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:ButtonField ButtonType="Button" DataTextFormatString="alert(&quot;If this was working the item would be in your cart &quot;)" InsertVisible="False" Text="Buy" />
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
        <asp:Button runat="server" Text="Log Out" OnClick="LogOut_Click" />
    <br />

    <br />

</asp:Content>
