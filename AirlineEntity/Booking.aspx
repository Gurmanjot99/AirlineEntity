<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="AirlineEntity.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <div class="container">
        <div class="row">
            <div class="col-md-12">


                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DepartureLabel" runat="server" Text='<%# Eval("Departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MemberLabel" runat="server" Text='<%# Eval("Member") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DepartureTextBox" runat="server" Text='<%# Bind("Departure") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MemberTextBox" runat="server" Text='<%# Bind("Member") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DepartureTextBox" runat="server" Text='<%# Bind("Departure") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="destinationTextBox" runat="server" Text='<%# Bind("destination") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MemberTextBox" runat="server" Text='<%# Bind("Member") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DepartureLabel" runat="server" Text='<%# Eval("Departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MemberLabel" runat="server" Text='<%# Eval("Member") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Contact</th>
                                            <th runat="server">Departure</th>
                                            <th runat="server">destination</th>
                                            <th runat="server">Member</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DepartureLabel" runat="server" Text='<%# Eval("Departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="destinationLabel" runat="server" Text='<%# Eval("destination") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MemberLabel" runat="server" Text='<%# Eval("Member") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineEntityConnectionString3 %>" DeleteCommand="DELETE FROM [Booking] WHERE [id] = @id" InsertCommand="INSERT INTO [Booking] ([Name], [Contact], [Departure], [destination], [Member]) VALUES (@Name, @Contact, @Departure, @destination, @Member)" SelectCommand="SELECT * FROM [Booking] ORDER BY [id] DESC" UpdateCommand="UPDATE [Booking] SET [Name] = @Name, [Contact] = @Contact, [Departure] = @Departure, [destination] = @destination, [Member] = @Member WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Departure" Type="String" />
                        <asp:Parameter Name="destination" Type="String" />
                        <asp:Parameter Name="Member" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Contact" Type="String" />
                        <asp:Parameter Name="Departure" Type="String" />
                        <asp:Parameter Name="destination" Type="String" />
                        <asp:Parameter Name="Member" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </div>
</asp:Content>
