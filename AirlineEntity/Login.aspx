<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AirlineEntity.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <label>User Name </label><br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="Enter User Name " ></asp:RequiredFieldValidator><br />

                <label>User Password </label><br />
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Enter User Password " ></asp:RequiredFieldValidator><br />


                <asp:Button ID="btnLogin" runat="server" Text="Login" Class="btn btn-warning" OnClick="btnLogin_Click" />
                <h1 id="output" runat="server">  </h1>
            </div>
        </div>
    </div>
</asp:Content>
