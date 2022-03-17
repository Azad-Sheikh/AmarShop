<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AmarShop.User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" Height="293px" Width="310px" DataKeyField="IID" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
        <ItemTemplate>
           <table>
               <tr>
                   <td style="text-align:center; background-color:#5f98f3">
                       <asp:Label ID="Label1" runat="server" Text='<%# Eval("IName") %>' Font-Bold="True"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td style="text-align:center">
                       <asp:Image ID="Image1" runat="server" Height="279px" Width="278px" BorderColor="#5F98F3" BorderWidth="1px" ImageUrl='<%# Eval("Image") %>'/>
                   </td>
               </tr>
                <tr>
                   <td style="text-align:center; background-color:#5f98f3">
                       <asp:Label ID="Label2" runat="server" Text="Price:Tk" Font-Bold="True" ForeColor="White" style="text-align:center"></asp:Label>
                         <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>' Font-Bold="True" ForeColor="White" style="text-align:center"></asp:Label>
                   </td>
               </tr>
                <tr>
                   <td align="center">Quantity
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           <asp:ListItem>5</asp:ListItem>
                           <asp:ListItem></asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
                <tr>
                   <td "text-align:center">
                       <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/logo/addtocart.jpg" Width="160px" CommandArgument= '<%# Eval("IID") %>' CommandName="AddToCart" ImageAlign="Middle" />
                   </td>
               </tr>
           </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmarShopCon %>" SelectCommand="SELECT [IID], [IName], [Price], [Image] FROM [Item]"></asp:SqlDataSource>
</asp:Content>
