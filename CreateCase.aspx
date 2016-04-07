<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateCase.aspx.cs" Inherits="PoliceDepartment.CreateCase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Creat Case</title>
            <link href="../css/style.css" rel="stylesheet" />
        <script src="../JS/Rotator.js" language="javascript" type="text/javascript"></script>

</head>
<body style="background: rgba(45, 45, 45, .7);background-image:url('../images/police_Building.jpg');background-repeat:no-repeat;background-size:100%;""> 

    <form id="form1" runat="server">

            <div class="NavigationMenu" style="float: left;margin-left: 250px;width: 717px;padding: 5px;border-radius:10px;">

                <div style="margin-left:49px;">
                <div class="navbar"><asp:hyperlink navigateurl="~/Home.aspx" id="lnkHome" text="Home" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Login.aspx" id="LogOut" text="Log Out" runat="server" style="margin-left: 478px;" /></div>
                    </div>
            </div>
        <div style="background-image: url('/images/leather.jpg'); width: 719px;height: 477px;margin-left: 251px; z-index:-22;box-shadow: 10px  #888888;
                   margin-right:1124px;clear: both;color: white;margin-left: 256px;border-radius: 10px; background-repeat: no-repeat; background-size: 100%;">
       
              <table style="background-image: url('/images/wood-b.jpg'); z-index:-22;border-width:10px;margin-bottom: 6px;
                  border-radius: 10px; background-repeat: no-repeat; color: white; height: 274px;width: 249px;background-size: 176%;margin-left:10px;">
                  <p style="background-color:yellow;border-color:red;border-style:groove;color:black;">Create New Case&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Traffic Violation Particulars</p>

                   <tr>
                    <td>
                        Title: 
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxTitle" ToolTip="Insert title for the case"></asp:textbox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Location : 
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxLocation" ToolTip="Location of the case"></asp:textbox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Crime Type: 
                    </td>
                    <td>
                        <asp:radiobuttonlist id="rblCrimeType" runat="server" RepeatDirection="Horizontal" ToolTip="What type of case" style="display:inline;">
                            <asp:ListItem value="1">Traffic</asp:ListItem>
                            <asp:ListItem value="2">Theft</asp:ListItem>
                            <asp:ListItem value="3">Assault</asp:ListItem>
                        </asp:radiobuttonlist>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Date: 
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxDateOf" ToolTip="Date of occurance MM/DD/YYYY"></asp:textbox>
                    </td>
                    </tr>
                                    <tr>
                    <td>
                        Time: 
                    </td>
                    <td>
                        <asp:textbox runat="server"   id ="txtBoxTime" ToolTip="Time of occurance HH/MM"></asp:textbox>
                    </td>
                    </tr>
                                    <tr>
                    <td>
                        Description: 
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxDescription" ToolTip="Brief description of case"></asp:textbox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:button runat="server" text="Submit" id="btnSubmit" ToolTip="Submit case" OnClick="btnSubmit_Click"/>
                    </td>
                    </tr>
                </table>
             <table style="background-image: url('/images/wood-b.jpg'); z-index:-22;border-width:10px;margin-top: -278px;
                  border-radius: 10px; background-repeat: no-repeat; color: white; height: 274px;width: 316px;background-size: 176%;margin-left: 394px;">
                     <tr>
                    <td>
                        Traffic Violation Type: 
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxTrafficViolationType" ToolTip="Insert title for the case"></asp:textbox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Fine Amount In $ :
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxFineAmount" ToolTip="Location of the case"></asp:textbox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Demrite Value:
                    </td>
                    <td>
                        <asp:textbox runat="server" id ="txtBoxDemrite" ToolTip="Location of the case"></asp:textbox>
                    </td>
                    </tr>
                </table>
             <div style="background-color:white;">     
            <address style="background:rgba(228, 218, 218, 0.5);font-size: x-large;color:red;font-family:"Segoe UI Black";">Details of each case </address></div>
            <fieldset style="color:black;background-color:rgba(100, 76, 76,.7);"> In each case there are criminals, officers involved, case ID as well as title has to be entered
                <br /> People involved in the crime have to be inserted into the database 
            </fieldset>
            
             </div>
       
    </form>
</body>
</html>
 