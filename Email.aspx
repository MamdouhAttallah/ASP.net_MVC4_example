<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="PoliceDepartment.Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Compose Email</title>
            <link href="../css/style.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="animations.css">
</head>
<body style="background: rgba(45, 45, 45, .7);background-image:url('../images/police_Building.jpg'); background-repeat:no-repeat;background-size:100%;"> 
    
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
    
    <form id="form1" runat="server">
            <div style="background-image: url('/images/leather.jpg');border-style: solid;box-shadow: 14px 10px 2px black; width: 731px;height: 477px;margin-left: 251px; z-index:-22;box-shadow: 10px  #888888;
                   margin-right:1124px;clear: both;color: white;margin-left: 256px;border-radius: 10px; background-repeat: no-repeat; background-size: 100%;">
    <div style="margin-left:120px;">
 <script language="javascript">var sa_email_id = '17413-33a24'; var sa_sent_text = 'Thank you for contacting us. We will get back to you soon.';</script>
<script language="javascript" src="http://s1.smartaddon.com/sa_htmlform.js"></script>
<div id="sa_contactdiv">
<form name=sa_htmlform style="margin:0px" onsubmit="return sa_contactform()">
<table>
<tr><td>E-mail: <span style="color:#D70000">*</span><br><input style="color:#D70000; width:500px;" type="text" name="email" required="true" /></td></tr>
<tr><td>Subject: <span style="color:#D70000">*</span><br><input style="color:#D70000; width:500px;" type="text" name="subject" required="true" /></td></tr>
<tr><td>Message: <span style="color:#D70000">*</span><br><textarea style="color:#D70000; width:500px;" name="message" cols="42" rows="9" required="true"></textarea></td></tr>
<tr><td><input type="submit" value="Send Message" style="font-weight:bold"></td></tr>
</table>
</form><div style="padding-top:10px"></div></div>
    </div>
               <address style="background:rgba(228, 218, 218, 0.5);font-size: x-large;color:red;border-style: solid;border-color: rgb(58, 45, 45);font-family:"Segoe UI Black";">Manage Email </address></div>
            <fieldset style="color:black;background-color:rgba(100, 76, 76,.7);width:122px;border-style: solid;border-color: rgb(58, 45, 45);height: 89px;margin:-113px 271px;position:fixed;"> 
                <br /><a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Compose email</b></span>
                <img src="../images/Forward.png" /style="width: 26px;height: 32px;margin-left: 106px;; z-index:-22;margin-bottom: 6px;
                   clear: both;border-radius: 10px;"></a>
                  <a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Sent email(0)</b></span></a> 
            </fieldset>
            <fieldset style="color:black;border-style: solid;border-color: rgb(58, 45, 45);background-color:rgba(100, 76, 76,.7);width:122px;height: 89px;margin:-113px 548px;position:fixed;"> 
                <br /><a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Inbox(0)</b></span>
                <img src="../images/inbox.png" /style="width: 26px;height: 32px;margin-left: 106px; z-index:-22;margin-bottom: 6px;
                   clear: both;border-radius: 10px;"></a>
                  <a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Important(0)</b></span></a> 
            </fieldset>

            <fieldset style="color:black;background-color:rgba(100, 76, 76,.7);border-style: solid;border-color: rgb(58, 45, 45);width:122px;height: 89px;margin:-113px 820px;position:fixed;"> 
                <br /><a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Trash(0)</b></span>
                <img src="../images/trash.png" /style="width: 26px;height: 32px;margin-left: 106px;; z-index:-22;margin-bottom: 6px;
                   clear: both;border-radius: 10px;"></a>
                 <br /> <a href=""><span style="position:fixed;color:ActiveBorder;text-decoration:underline;"><b>Drafts(0)</b></span></a> 
            </fieldset>
    </div>
    </form>
</body>
</html>
