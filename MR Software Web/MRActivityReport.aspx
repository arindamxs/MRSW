<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MRActivityReport.aspx.cs" Inherits="MR_Software_Web.MRActivityReport" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
    <series>
        <asp:Series Name="Series1" XValueMember="ActivityDate" YValueMembers="ActivityCount">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </chartareas>
</asp:Chart>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MRSWConnectionString %>" SelectCommand="SELECT [ActivityDate], [ActivityCount] FROM [MRActivityReport]"></asp:SqlDataSource>
    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
        <series>
            <asp:Series ChartType="FastLine" Name="Series1" XValueMember="ActivityDate" YValueMembers="ActivityCount">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1" Palette="Fire">
        <series>
            <asp:Series ChartType="Area" Name="Series1" XValueMember="ActivityDate" YValueMembers="ActivityCount">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
</asp:Content>
