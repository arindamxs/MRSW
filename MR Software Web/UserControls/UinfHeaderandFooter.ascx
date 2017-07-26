<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UinfHeaderandFooter.ascx.cs" Inherits="UserControls_UinfHeaderandFooter" %>


<table cellspacing="0" border="0" width="" 
    style="">
<%--  <tr>
    <td class="UserInfoHead">
      User Info</td>
  </tr>--%>
  <%--<asp:LoginStatus ID="hjh" runat="server"
CssClass="UserInfoLink" />--%>
  <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
      <%--<tr>
        <td>
          <span class="UserInfoText">You are not logged in.</span>
        </td>
      </tr>--%>
      <tr>
        <td>
         <asp:HyperLink ID="HomeHyperlink" NavigateUrl="~/Default.aspx" runat="server" CssClass="UserInfoLink">Home</asp:HyperLink> &nbsp </td>
          <td><h6>|</h6></td>
          <td>
            <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="UserInfoLink"/> &nbsp
         </td>
       <td><h6>|</h6></td>
     
      <td>
     
<asp:HyperLink runat="server" ID="registerLink"
NavigateUrl="~/Register.aspx" Text="Register"
ToolTip="Go to the registration page"
CssClass="UserInfoLink" />
</td>   <td><h6>|</h6></td><td>
<%--&nbsp <asp:HyperLink ID="TrackOrder" CssClass="UserInfoLink" NavigateUrl="~/TrackOrder.aspx" runat="server">Track Order</asp:HyperLink>--%>
<asp:HyperLink ID="ContactUs" CssClass="UserInfoLink" NavigateUrl="~/feedback.aspx" runat="server">Contact Us</asp:HyperLink>
</td>

 <td>
     
</tr>
    </AnonymousTemplate>
    

    <RoleGroups>
<asp:RoleGroup Roles="Customers">
<ContentTemplate>
<tr>



<td>
<asp:LoginName ID="LoginName1" runat="server"
FormatString="Welcome! <b>{0}</b>. "
CssClass="UserInfoText" />
</td>
<td>

<asp:HyperLink runat="server" ID="HyperLink1"
NavigateUrl="~/Default.aspx"
Text="Home"
ToolTip=""
CssClass="UserInfoLink" />

</td>
<td><h6>|</h6></td>
<td>

<asp:LoginStatus ID="LoginStatus1" runat="server"
CssClass="UserInfoLink" />

</td>
<td><h6>|</h6></td>
<td>

<asp:HyperLink runat="server" ID="detailsLink"
NavigateUrl="~/MyAccount.aspx"
Text="My Account"
ToolTip="Edit your personal details"
CssClass="UserInfoLink" />

</td>

</tr>
</ContentTemplate>
</asp:RoleGroup>
      <asp:RoleGroup Roles="Administrators">
        <ContentTemplate>
          <tr>
            <td>
              <asp:LoginName ID="LoginName2" runat="server" FormatString="Welcome <b>{0}</b> (Admin) "
                CssClass="UserInfoText" />
            </td>
          <td><h6>|</h6></td>
            <td>
             
                <asp:LoginStatus ID="LoginStatus2" runat="server" CssClass="UserInfoLink" />
             
            </td>
  <td><h6>|</h6></td>
           <%-- <td>
         
                <a class="UserInfoLink" href="../Admin/CatalogAdmin.aspx">Catalog Admin</a>
            
            </td>--%>
       
            <td>
            
                <%--<a class="UserInfoLink" href="~/ShoppingCartAdmin.aspx">Cart</a>--%>
                <%--<hyperlink id="UserInfoLink">Cart</hyperlink>--%>
                <asp:HyperLink runat="server" ID="detailsLink"
NavigateUrl="~/ShoppingCartAdmin.aspx"
Text="Cart"
ToolTip=""
CssClass="UserInfoLink" />
            
            </td>
          <td><h6>|</h6></td>
            <td>
            <asp:HyperLink runat="server" ID="HyperLink2"
NavigateUrl="~/OrdersAdmin.aspx"
Text="Order Admin"
ToolTip=""
CssClass="UserInfoLink" />
             
                <%--<a class="UserInfoLink" href="../OrdersAdmin.aspx">Orders Admin</a>--%> 
             
            </td><td><h6>|</h6></td>
            <td>
              <asp:HyperLink runat="server" ID="HyperLink3"
NavigateUrl="~/OrderTrack.aspx"
Text="Order Track"
ToolTip=""
CssClass="UserInfoLink" />
                <%--<a class="UserInfoLink" href="../OrderTrack.aspx">Orders Track</a> --%>
             
            </td><td><h6>|</h6></td>
            <td>
              <asp:HyperLink runat="server" ID="HyperLink4"
NavigateUrl="~/UserTrack.aspx"
Text="User Track"
ToolTip=""
CssClass="UserInfoLink" />
                <%--<a class="UserInfoLink" href="~/UserTrack.aspx">User Track</a>--%> 
             
            </td><td><h6>|</h6></td>
            <td>
              <asp:HyperLink runat="server" ID="HyperLink5"
NavigateUrl="~/CatalogAdmin.aspx"
Text="Catalog"
ToolTip=""
CssClass="UserInfoLink" />
                <%--<a class="UserInfoLink" href="~/UserTrack.aspx">User Track</a>--%> 
             
            </td>
          </tr>
        </ContentTemplate>
      </asp:RoleGroup>
    </RoleGroups>
  </asp:LoginView>
</table>







