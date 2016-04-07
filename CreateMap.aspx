<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateMap.aspx.cs" Inherits="PoliceDepartment.CreateMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript" src="http://www.yourmapper.com/javascript/widget.php?c=&offcolumns=&maplist=&dataset=204&start=&end=&search=&num=100&location=&lat=&lon=&details=0&list=0&area=0&type=map&overlay=&key=d08b22f6fd230e87560d9b6f8fa2ebc2"></script> 
    <link href="../css/style.css" rel="stylesheet" />
     <title></title>
</head>
<body style="background: rgba(45, 45, 45, .7);background-image:url('../images/police_Building.jpg');background-repeat:no-repeat;background-size:100%;""> 
                <div class="NavigationMenu" style="float: left;margin-left: 180px;width: 70%;padding: 5px;border-radius:10px;">

                <div style="margin-left:49px;">
                <div class="navbar"><asp:hyperlink navigateurl="~/Home.aspx" id="lnkHome" text="Home" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/ExploreCases.aspx" id="lnkExploreCases" text="Explore Cases" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Report.aspx" id="lnkReport" text="Report" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Login.aspx" id="lnkLogin" text="Login" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Register.aspx" id="lnkRegister" text="Register" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Login.aspx" id="LogOut" text="Log Out" runat="server" style="margin-left: 478px;" /></div>
                    </div>
            </div>

    <form id="form1" runat="server" style="width: 71%; height:50%;margin-left: 172px;">
<!-- start Your Mapper Widget --> 


<!-- in page body --> 
<div id="YMWidget" name="YMWidget" class="YMWidget"></div> 
<div align="center" style="clear:both"><em>Map and data services provided by</em> <a href="http://www.yourmapper.com/services.php" title="Visit Your Mapper to use this data on your website or mobile apps."><img src="http://static.yourmapper.com/images/ym-sig.gif" border="0" align="absmiddle" /></a></div> 

<!-- end Your Mapper Widget -->
    </form>
</body>
</html>
