<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PoliceDepartment.Profile" %>
<%@ MasterType VirtualPath="~/Masters/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <span style="font-family:'Franklin Gothic'; font-size: xx-large; color:red;font-weight:900; background-color:darkseagreen;">Registeration Form</span>
    <form id="Form1" runat="server">
    <table >
    <script type="text/javascript">

            </script>
    <%--<tr>
      <td>
	        <asp:Label ID="Label1" runat="server" ToolTip="Please Put your userName" >UserName</asp:Label>      

      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxUserName"  ToolTip="UserName should be unique" ></asp:TextBox>
        </td>
    </tr>
            <tr>
      <td>
         <asp:Label ID="Label2" runat="server" ToolTip="Password Have to start with an upper case" >Password</asp:Label>   
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxPassWord" type="PASSWORD" ></asp:TextBox>
        </td>
    </tr>--%>
        <tr>
      <td>
         <asp:Label ID="Label4" runat="server" ToolTip="Enter Your Social Security Nubmber" >Social Nubmber</asp:Label>  
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxSocialNumber"></asp:TextBox>
        </td>
    </tr>
               <tr>
      <td>
                <asp:Label ID="Label5" runat="server" ToolTip="Enter Your First Name" >First Name</asp:Label>  
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxFirstName"></asp:TextBox>
        </td>
    </tr>

               <tr>
      <td>
         <asp:Label ID="Label6" runat="server" ToolTip="Enter Your Last Name" >Last Name</asp:Label> 
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxLastName"></asp:TextBox>
        </td>
    </tr>
               <tr>
      <td>
           <asp:Label ID="Label7" runat="server" ToolTip="Enter Your Middle Name" >Middle Name</asp:Label>       </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxMiddleName"></asp:TextBox>
        </td>
    </tr>

         <tr>
      <td>
             <asp:Label ID="Label8" runat="server" ToolTip="Choose Your Gender" >Gender</asp:Label> 
      </td>
        <td>
       <asp:RadioButtonList id="radioListGender" runat="server">
           <asp:ListItem ToolTip="Male" >Male</asp:ListItem>
           <asp:ListItem ToolTip="Female" >Female</asp:ListItem>
       </asp:RadioButtonList>
        </td>
    </tr>

                       <tr>
      <td>
         Date of birth :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxDOB"></asp:TextBox>
        </td>
    </tr>

                       <tr>
      <td>
         Place of birth :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxPOB"></asp:TextBox>
        </td>
    </tr>

<%--                         <tr>
      <td>
         Ethnicity :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxEth"></asp:TextBox>
        </td>
    </tr>

                         <tr>
      <td>
         Build :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxBuild"></asp:TextBox>
        </td>
    </tr>--%>


                         <tr>
      <td>
         Height :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxHeight"></asp:TextBox>
        </td>
    </tr>

                         <tr>
      <td>
         Weight :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxWeight"></asp:TextBox>
        </td>
    </tr>


<%--
                         <tr>
      <td>
         Hair :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxHair"></asp:TextBox>
        </td>
    </tr>
                         <tr>
      <td>
         Eye :
      </td>
        <td>
       <asp:TextBox runat="server" id="txtBoxEye"></asp:TextBox>
        </td>
    </tr>--%>
        <tr>
        <td>
            <asp:Button runat="server" Text="Update Profile" ID="btnUpdateProfile" visible="false" OnClick="btnUpdateProfile_Click"></asp:Button>
            <asp:Button runat="server" Text="Edit Profile" ID="btnEditProfile" OnClick="btnEditProfile_Click"></asp:Button>
        </td>
        <br /><br />
        <td>
            <asp:Label id="lbErrorMessage" visible="false" runat="server"  style="color:red;"></asp:Label>
        </td>
        </tr>
    </table>
    </form>

</asp:Content>
