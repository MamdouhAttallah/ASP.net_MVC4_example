<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="NewCase.aspx.cs" Inherits="PoliceDepartment.NewCase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
  <form id="form2" runat="server">
      <asp:gridview id="CustomersGridView" 
        datasourceid="CustomersSqlDataSource" 
        autogeneratecolumns="true"
        runat="server">

        <emptydatarowstyle backcolor="LightBlue"
          forecolor="Red"/>

        <emptydatatemplate>

          <asp:image id="NoDataImage"
            imageurl="~/images/Image.jpg"
            alternatetext="No Image" 
            runat="server"/>

            No Data Found.  

        </emptydatatemplate> 

      </asp:gridview>

      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the Northwind sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the Web.config file. The following query        -->
      <!-- returns an empty data source to demonstrate the      -->
      <!-- empty row.                                           -->
      <asp:sqldatasource id="CustomersSqlDataSource"  
        selectcommand="Select [CustomerID], [CompanyName], [Address], [City], [PostalCode], [Country] From [Customers] Where CustomerID='NoID'"
        connectionstring="<%$ ConnectionStrings:NorthWindConnectionString%>"
        runat="server">
      </asp:sqldatasource>
  </form>
</asp:Content>
