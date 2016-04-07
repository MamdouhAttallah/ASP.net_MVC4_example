<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PoliceDepartment.Home" %>
<%@ MasterType VirtualPath="~/Masters/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">

       <script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js"
type="text/javascript"></script>

<style type="text/css">
@import url("http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.css");

#feedControl {
margin-top : 10px;
margin-left: auto;
margin-right: auto;
width : 440px;
}
</style>
<script type="text/javascript">
    function load() {
        var feed = "http://rss.cbc.ca/lineup/canada-britishcolumbia.xml";
        new GFdynamicFeedControl(feed, "feedControl");

    }
    google.load("feeds", "1");
    google.setOnLoadCallback(load);
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <asp:Label runat="server" visible="false" id ="lblMessage"></asp:Label><br /><br />
    Home Page
               
    <div id="body" style="background-color:white; border:groove;"  >
<div id="feedControl">Loading...</div>
</div>
</asp:Content>
