<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFlight.aspx.cs" Inherits="AirlineEntity.AddFlight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-12">


                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id" InsertItemPosition="LastItem">
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
                                <asp:Label ID="FlightLabel" runat="server" Text='<%# Eval("Flight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureLabel" runat="server" Text='<%# Eval("departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
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
                                <asp:TextBox ID="FlightTextBox" runat="server" Text='<%# Bind("Flight") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="departureTextBox" runat="server" Text='<%# Bind("departure") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DestinationTextBox" runat="server" Text='<%# Bind("Destination") %>' />
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
                                <asp:TextBox ID="FlightTextBox" runat="server" Text='<%# Bind("Flight") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="departureTextBox" runat="server" Text='<%# Bind("departure") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DestinationTextBox" runat="server" Text='<%# Bind("Destination") %>' />
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
                                <asp:Label ID="FlightLabel" runat="server" Text='<%# Eval("Flight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureLabel" runat="server" Text='<%# Eval("departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
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
                                            <th runat="server">Flight</th>
                                            <th runat="server">departure</th>
                                            <th runat="server">Destination</th>
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
                                <asp:Label ID="FlightLabel" runat="server" Text='<%# Eval("Flight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="departureLabel" runat="server" Text='<%# Eval("departure") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirlineEntityConnectionString %>" DeleteCommand="DELETE FROM [Flight] WHERE [id] = @id" InsertCommand="INSERT INTO [Flight] ([Flight], [departure], [Destination]) VALUES (@Flight, @departure, @Destination)" SelectCommand="SELECT * FROM [Flight] ORDER BY [id] DESC" UpdateCommand="UPDATE [Flight] SET [Flight] = @Flight, [departure] = @departure, [Destination] = @Destination WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Flight" Type="String" />
                        <asp:Parameter Name="departure" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Flight" Type="String" />
                        <asp:Parameter Name="departure" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>
        </div>
    </div>
</asp:Content>
