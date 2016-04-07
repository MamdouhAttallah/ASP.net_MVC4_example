<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Creat Case</title>
            <link href="../css/style.css" rel="stylesheet" />
        <script src="../JS/Rotator.js" language="javascript" type="text/javascript"></script>

</head>
    Explore Cases
    <form runat="server">
     <div class="NavigationMenu" style="float: left;margin-left: 116px;width: 1001px;padding: 5px;border-radius:10px;">

                <div style="margin-left:49px;">
                <div class="navbar"><asp:hyperlink navigateurl="~/Home.aspx" id="lnkHome" text="Home" runat="server" /></div>
                <div class="navbar"><asp:hyperlink navigateurl="~/Login.aspx" id="LogOut" text="Log Out" runat="server" style="margin-left: 478px;" /></div>
                    </div>
            </div>
     <div id="gridview">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" style="margin-left: 120px;border-style: solid;border-color:black;"
                DataKeyNames="Case_ID" DataSourceID="SqlDataSource1"
                AutoGenerateColumns="False" SelectedIndex="0"
                CellPadding="4" GridLines="None" ForeColor="Black" Width="651px">
                <Columns>
                    <asp:BoundField DataField="Case_ID" HeaderText="Case_ID"
                        ReadOnly="True" Visible="false">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Crime_ID" HeaderText="Crime_ID"
                        ReadOnly="True" Visible="false">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Person_ID" HeaderText="Person_ID"
                        ReadOnly="True" Visible="false">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="Name of Officer">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender"
                         ReadOnly="True" Visible="false">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Date_Open" HeaderText="Date_Open">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                   <asp:BoundField DataField="Date_Closed" HeaderText="Date_Closed">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Title" HeaderText="Title">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Is_Traffic" HeaderText="Is_Traffic">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                     <asp:BoundField DataField="Is_Assault" HeaderText="Is_Assault">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>

                 <asp:BoundField DataField="Is_Theft" HeaderText="Is_Theft">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Date_of" HeaderText="Date_of">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                   <asp:BoundField DataField="Time_of_Day" HeaderText="Time_of_Day">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                   <asp:BoundField DataField="Crime_Desc" HeaderText="Crime_Desc">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                   <asp:BoundField DataField="Location" HeaderText="Location">
                        <HeaderStyle HorizontalAlign="Left" />
                        <ItemStyle Width="500px" />
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <HeaderStyle BackColor="blue" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="White" ForeColor="Black" />
                <AlternatingRowStyle BackColor="#E3EAEB" ForeColor="Black" />
                <SelectedRowStyle BackColor="blue" ForeColor="White" />
                <PagerSettings Mode="NextPreviousFirstLast" />
                <PagerStyle BackColor="#1C5E55" ForeColor="White"
                    HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:PoliceDeptConnection %>"
                SelectCommand="SELECT      
		                            Case_File.Case_ID, Crime.Crime_ID, Person.Person_ID,  
		                            Person.FirstName, Person.LastName, Person.Gender, 				
		                            Case_File.Date_Open, Case_File.Date_Closed, Case_File.Title,
			                            CASE Crime.Is_Traffic WHEN '1' THEN 'YES' ELSE 'NO' END AS Is_Traffic
			                            ,CASE Crime.Is_Theft WHEN '1' THEN 'YES' ELSE 'NO' END AS  Is_Theft
			                            ,CASE Crime.Is_Assault WHEN '1' THEN 'YES' ELSE 'NO' END AS Is_Assault	 
			                            ,Crime.Date_of, Crime.Time_of_Day, Crime.Crime_Desc, Crime.Location
                                FROM
                                    Crime INNER JOIN
                                    Case_File ON Crime.Case_ID = Case_File.Case_ID INNER JOIN
                                    Person ON Case_File.Officer_ID = Person.Person_ID">
          </asp:SqlDataSource>
        </div><br /><br />
        </form>

