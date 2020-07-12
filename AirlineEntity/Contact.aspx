<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AirlineEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <br /><br /><br />

        <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="img/cnt.jpg" class="img-thumbnail" style="height:400px;"/>

            </div>
            <div class="col-md-6">
                <label> Name </label><br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter User Name " ></asp:RequiredFieldValidator><br />

                <label>Email </label><br />
                <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" runat="server" ErrorMessage="Enter Email" ></asp:RequiredFieldValidator><br />

                <label>Message </label><br />
                <asp:TextBox ID="txtMsg" TextMode="MultiLine" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtMsg" runat="server" ErrorMessage="Enter Message" ></asp:RequiredFieldValidator><br />




                <asp:Button ID="btnLogin" runat="server" Text="Send Query" Class="btn btn-warning" OnClick="btnLogin_Click" />
                <h1 id="output" runat="server">  </h1>
            </div>
        </div>

    </div>
</asp:Content>
