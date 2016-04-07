<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PoliceDepartment.Login" %>
<%@ MasterType VirtualPath="~/Masters/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <form runat="server">

        <div> 
    
    </div>

    <table >
        <h2 style="font-size: 30px;color: #ffffff;text-align: center;text-shadow: 1px 1px 1px #23bec6;font-family: 'Conv_GothamHTF-Bold',Sans-Serif;line-height: normal;">ENTER YOUR UserName And Password BELOW</h2>
    <tr>

        <td>
       <asp:TextBox runat="server" placeHolder="UserName"  id="txtBoxUserName" style=" border: none;padding-left: 10px;padding-right: 10px;color: #fff;font-size: 14px;height: 30px;width: 220px;font-family: 'Conv_MyriadPro-Regular',Sans-Serif;background: rgba(210,200,122,.5);"></asp:TextBox>
        </td>
    </tr>
            <tr>
  
        <td>
       <asp:TextBox runat="server" id="txtBoxPassWord"  type="PASSWORD" placeHolder="Password" style=" border: none;padding-left: 10px;padding-right: 10px;color: #fff;font-size: 14px;height: 30px;width: 220px;font-family: 'Conv_MyriadPro-Regular',Sans-Serif;background: rgba(210,200,122,.5);"></asp:TextBox>
        </td>
    </tr>
        <td>
            <asp:Button style=" background: none repeat scroll 0% 0% #23BEC6;
    color: #FFF;
    font-family: 'Conv_GothamHTF-Bold',Arial Black,Arial Bold,Gadget,Sans-Serif;
    line-height: normal;
    font-size: 30px;
    text-shadow: 2px 2px 15px #535353;
    padding: 7px 10px;
    text-align: center;
    transition: all 0.5s ease 0s;
    box-shadow: 7px 7px 5px rgba(0, 0, 0, 0.75);" runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click"></asp:Button>
        </td>
        </tr>
        <tr>
            <td>
                <a href="Report.aspx"> Forgot your password</a>
            </td>
        </tr>
    </table>
    </form>

</asp:Content>
