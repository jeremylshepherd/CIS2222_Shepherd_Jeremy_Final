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

    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="ReadOnly" AllowPaging="True" DataKeyNames="Id">
        <EditItemTemplate>
            <div class="card border-primary mb-3">
                <div class="card-header">Edit Student</div>
                <div class="card-body d-flex flex-column">
                    
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Placeholder="Name" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ErrorMessage="Name Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' Placeholder="Email" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmailTextBox"    ForeColor="Red" 
                        ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  Display = "Dynamic" 
                        ErrorMessage = "Invalid email address"/>
                    <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' Placeholder="Telephone number" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="TelephoneTextBox" ErrorMessage="Telephone Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TelephoneTextBox"    ForeColor="Red" 
                        ValidationExpression="[0-9]{10}"  Display = "Dynamic" 
                        ErrorMessage = "Invalid telephone number"/>
                    <asp:TextBox ID="MajorTextBox" runat="server" Text='<%# Bind("Major") %>' Placeholder="Major" CssClass="form-control"/>                    
                    <asp:RequiredFieldValidator ControlToValidate="MajorTextBox" ErrorMessage="Major Required" ForeColor="Red" Display="Dynamic" runat="server" />
                     <asp:TextBox ID="GPATextBox" runat="server" Text='<%# Bind("GPA") %>' Placeholder="GPA" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="GPATextBox" ErrorMessage="GPA Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary"/>
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger"/>
                </div>
            </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="card border-primary mb-3">
                <div class="card-header">Add New Student</div>
                <div class="card-body d-flex flex-column">
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Placeholder="Name" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ErrorMessage="Name Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' Placeholder="Email" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ErrorMessage="Email Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="EmailTextBox"    ForeColor="Red" 
                        ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  Display = "Dynamic" 
                        ErrorMessage = "Invalid email address"/>
                    <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' Placeholder="Telephone number" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="TelephoneTextBox" ErrorMessage="Telephone Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TelephoneTextBox"    ForeColor="Red" 
                        ValidationExpression="[0-9]{10}"  Display = "Dynamic" 
                        ErrorMessage = "Invalid telephone number"/>
                    <asp:TextBox ID="MajorTextBox" runat="server" Text='<%# Bind("Major") %>' Placeholder="Major" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="MajorTextBox" ErrorMessage="Major Required" ForeColor="Red" Display="Dynamic" runat="server" />
                     <asp:TextBox ID="GPATextBox" runat="server" Text='<%# Bind("GPA") %>' Placeholder="GPA" CssClass="form-control"/>
                    <asp:RequiredFieldValidator ControlToValidate="GPATextBox" ErrorMessage="GPA Required" ForeColor="Red" Display="Dynamic" runat="server" />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="ADD" CssClass="btn btn-primary"/>
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger"/>
                </div>
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="card border-primary mb-3">
                <div class="card-header">Student</div>
                <div class="card-body d-flex flex-column">
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Telephone:
                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Bind("Telephone") %>' />
                    <br />
                    Major:
                    <asp:Label ID="MajorLabel" runat="server" Text='<%# Bind("Major") %>' />
                    <br />
                    GPA:
                    <asp:Label ID="GPALabel" runat="server" Text='<%# Bind("GPA") %>' />
                    <br />             
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary"/>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success"/>
             </div>
        </div>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Name], [Email], [Telephone], [Major], [GPA] FROM [Students]" InsertCommand="INSERT INTO Students(Name, Email, Telephone, Major, GPA) VALUES (@Name, @Email, @Telephone, @Major, @GPA)" UpdateCommand="UPDATE Students SET Name=@Name,Email=@Email,Telephone=@Telephone,Major=@Major,GPA=@GPA WHERE Id = @Id">
        <InsertParameters>
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Email" />
            <asp:Parameter Name="Telephone" />
            <asp:Parameter Name="Major" />
            <asp:Parameter Name="GPA" />
        </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Id" Type="Int32" />
             <asp:FormParameter FormField="@Name" Name="Name" />
             <asp:FormParameter FormField="@Email" Name="Email" />
             <asp:FormParameter FormField="@Telephone" Name="Telephone" />
             <asp:FormParameter FormField="@Major" Name="Major" />
             <asp:FormParameter FormField="@GPA" Name="GPA" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
