<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MR_Software_Web.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1
    {
        text-align: center;
    }
    .auto-style2
    {
        width: 338px;
    }
    .auto-style3
    {
        height: 42px;
    }
    .auto-style4
    {
        text-align: left;
        height: 26px;
        width: 143px;
    }
    .auto-style5
    {
        width: 338px;
        height: 26px;
    }
    .auto-style6
    {
        height: 26px;
    }
    .auto-style7
    {
        text-align: left;
        width: 143px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table style="width: 100%;">
        <tr>
            <td class="auto-style3" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_ent_id" runat="server" Text="Enter Email ID Test " Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_srch_eml" runat="server" Visible="False" Width="264px"></asp:TextBox>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" Visible="False" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_msg" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_name" runat="server" Width="297px"></asp:TextBox>
            </td>
           
            <td>
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_name" ErrorMessage="ENTER NAME" ValidationGroup="grp"></asp:RequiredFieldValidator>
&nbsp;</td>
           
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_email" runat="server" Width="290px"></asp:TextBox>
            </td>
           
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="ENTER EMAIL ID" ValidationGroup="grp"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_email" ErrorMessage="ENTER VALID EMAIL ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp"></asp:RegularExpressionValidator>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbl_mobile_no" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_mobile" runat="server" Width="284px"></asp:TextBox>
            </td>
            
            <td>
                <asp:RequiredFieldValidator ID="rfv_mobile" runat="server" ControlToValidate="txt_mobile" ErrorMessage="ENTER MOBILE NO" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_address" runat="server" Height="64px" TextMode="MultiLine" Width="204px"></asp:TextBox>
            </td>
            
            <td>
                <asp:RequiredFieldValidator ID="rfv_address" runat="server" ControlToValidate="txt_address" ErrorMessage="ENTER  ADDRESS" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_dob" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_dob" runat="server" Width="205px"></asp:TextBox>
            </td>
            
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="ref_dob" runat="server" ControlToValidate="txt_dob" ErrorMessage="ENTER DITE OF BITH" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
                <br />
                <asp:Button ID="btn_save" runat="server" Font-Bold="True" OnClick="btn_save_Click" Text="Save" ToolTip="save details" ValidationGroup="grp" />
&nbsp;<asp:Button ID="btn_edit1" runat="server" OnClick="btn_edit1_Click" Text="Edit" />
            </td>
            
        </tr>
    </table>

</asp:Content>
