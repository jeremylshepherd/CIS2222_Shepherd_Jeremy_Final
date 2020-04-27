<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShepherdJeremyFinalProject_01.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Current Students</h1>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-primary" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
            <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
        </Columns>
    </asp:GridView>

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Email], [Telephone], [Major], [GPA] FROM [Students]"></asp:SqlDataSource>

    <div class="card border-primary mb-3">
        <div class="card-header">Add New Student</div>
        <div class="card-body d-flex flex-column">
            <asp:TextBox ID="NameInput" runat="server" PlaceHolder="Name" CssClass="form-control"/>
            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="NameInput" runat="server" />
            <asp:TextBox ID="EmailInput" runat="server"  PlaceHolder="Email" CssClass="form-control"/>
            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="EmailInput" runat="server" />
            <asp:RegularExpressionValidator ControlToValidate="EmailInput" runat="server" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" />
            <asp:TextBox ID="TelephoneInput" PlaceHolder="Telephone Number" CssClass="form-control" runat="server" />
            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="TelephoneInput" runat="server" />
            <asp:TextBox ID="MajorInput" PlaceHolder="Major" CssClass="form-control" runat="server" />
            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="MajorInput" runat="server" />
            <asp:TextBox ID="GPAInput" PlaceHolder="GPA" CssClass="form-control" runat="server" />
            <asp:RequiredFieldValidator ErrorMessage="Required" ControlToValidate="GPAInput" runat="server" />
            <asp:Button ID="AddButton" runat="server" CssClass="btn btn-primary" Text="ADD" />
        </div>
    </div>



    
</asp:Content>
