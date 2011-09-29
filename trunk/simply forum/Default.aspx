<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="simply_forum._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:Label ID="errorlabel" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:small_forumConnectionString %>" 
        SelectCommand="SELECT * FROM [TOPICS]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="*Название"></asp:Label>
    <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="*Автор"></asp:Label>
    <asp:TextBox ID="author" runat="server"></asp:TextBox><br />
    <asp:Button ID="submit" runat="server" Text="Создать" onclick="submit_Click" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowPaging="True" 
        onrowcreated="GridView1_RowCreated" PageIndex="20">
        <Columns>
            <asp:BoundField DataField="TOPIC_ID" HeaderText="TOPIC_ID" 
                SortExpression="TOPIC_ID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="AUTHOR" HeaderText="AUTHOR" 
                SortExpression="AUTHOR" />
            <asp:BoundField DataField="DATE_CREATE" HeaderText="DATE_CREATE" 
                SortExpression="DATE_CREATE" />
        </Columns>
    </asp:GridView>
</asp:Content>
