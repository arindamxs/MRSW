<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Doctor_Information.aspx.cs" Inherits="MR_Software_Web.Doctor_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript"   lang="javascript">
            function check(s, a) {
                if (document.getElementById("rdb_male").checked == false && document.getElementById("rdb_female").checked == false) {
                    a.IsValid = false

                }
                else {
                    a.IsValid = true;
                }

            }

</script>

<script type = "text/javascript">
    function functionx(evt) {
        if (evt.charCode > 31 && (evt.charCode < 48 || evt.charCode > 57)) {
            alert("Allow Only Numbers");
            return false;
        }
    }
     </script>


    

    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 23px;
        }
        .auto-style3
        {
            width: 430px;
        }
        .auto-style4
        {
            height: 23px;
            width: 430px;
        }
        .auto-style5
        {
            width: 430px;
            height: 69px;
        }
        .auto-style6
        {
            height: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
 


        <tr>
            <td class="auto-style5">
                <asp:Label ID="lbl_name" runat="server" Text="Doctor Name"></asp:Label>
                <br />
                <asp:TextBox ID="txt_name" runat="server" Width="251px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" ControlToValidate="txt_name" ErrorMessage="ENTER NAME" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">
                <asp:Label ID="lbl_gnder" runat="server" Text="Gender"></asp:Label>
                <br />
                
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                     <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_mobile" runat="server" Text="Mobile No"></asp:Label>
                <br />
                <asp:TextBox ID="txt_mobile_no" MaxLength="10" runat="server" Width="251px" onkeypress="return functionx(event)"></asp:TextBox>
                <br />
                
            </td>
            <td>
                <asp:Label ID="lbl_phn" runat="server" Text="Phone"></asp:Label>
                <br />
                <asp:TextBox ID="txt_phone" runat="server" Width="251px" onkeypress="return functionx(event)" ></asp:TextBox>
                <br />
               
 
                
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_email" runat="server" Text="Email Id"></asp:Label>
                <br />
                <asp:TextBox ID="txt_email" runat="server" Width="251px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfv_ent_ml_id" runat="server" ControlToValidate="txt_email" ErrorMessage="ENTER EMAIL ID" ValidationGroup="grp"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="rev_ent_vld_mi_id" runat="server" ControlToValidate="txt_email" ErrorMessage="EENTER VALID EMAIL ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style2">
                <asp:Label ID="lbl_mobile0" runat="server" Text="Marital Status"></asp:Label>
                <br />
               
                <asp:RadioButtonList ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server">
                    <asp:ListItem Value="Unmarried"></asp:ListItem>
                    <asp:ListItem Value="Married"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="RadioButtonList3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_dob" runat="server" Text="Date Of Birth"></asp:Label>
                <br />
                <asp:TextBox ID="txt_dob" runat="server" Width="251px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfv_dob" runat="server" ControlToValidate="txt_dob" ErrorMessage="ENTER DATE OF BIRTH" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lbl_grade" runat="server" Text="Grade"></asp:Label>
                <br />
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">

                
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lbl_address" runat="server" Text="Address"></asp:Label>
                <br />
                <asp:TextBox ID="txt_addres" runat="server" Width="262px" Height="30px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfv_adrs" runat="server" ControlToValidate="txt_addres" ErrorMessage="ENTER ADDRESS DETAILS" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="lbl_address_rd" runat="server" Text="Residential Address"></asp:Label>
                <br />
                <asp:TextBox ID="txt_rd_addres" runat="server" Width="262px" Height="30px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfv_rd_adrs" runat="server" ControlToValidate="txt_rd_addres" ErrorMessage="ENTER ADDRESS DETAILS" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <br />
                <br />
            </td>
            <td>
                <asp:Button ID="btn_save" runat="server" Text="Save" ValidationGroup="grp" Width="70px" OnClick="btn_save_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
