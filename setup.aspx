<%@ Page Language="vb" Title="Definitions Setup" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="setup.aspx.vb" Inherits="CustomerServiceLog.setup" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">

            <hgroup class="title">
                <h1 style="font-family:Arial;font-size:26px"><%: Title %></h1>
                <h2></h2>
            </hgroup>
            
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:UpdatePanel runat="server"><ContentTemplate>
        <div style="width:100%" align="center" >
        <asp:GridView ID="GridView1" runat="server" 
            GridLines="Horizontal"  ShowHeaderWhenEmpty="true" 
            AutoGenerateColumns="False" DataKeyNames="IssueID" DataSourceID="tblsrvissuecategoryDS">
            <HeaderStyle BackColor="#336699" ForeColor="White" HorizontalAlign="Left" Height="25" /> 

            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ShowEditButton="true"  ShowCancelButton="true" />
                
                <asp:BoundField DataField="IssueID" HeaderText="  IssueID    " ReadOnly="True" SortExpression="IssueID" />
                 <asp:BoundField DataField="IssueName" HeaderText="  Issue Name    "   />
                 <asp:BoundField DataField="IssueDescription" HeaderText="  Issue Description    "   />
                
             </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="tblsrvissuecategoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:BPOConnectionString %>" 
            UpdateCommand="Update [tblSrvIssueCategory] SET IssueName=@IssueName,IssueDescription=@IssueDescription WHERE IssueID=@IssueID"
            SelectCommand="SELECT * FROM [tblSrvIssueCategory]"
            DeleteCommand="Delete FROM [tblSrvIssueCategory] where IssueID=@IssueID"

            ></asp:SqlDataSource>
            <asp:Button ID="btnInsertRowLinkButton" Text="New Category" runat="server" />
</div>
        <div style="width:35%;height:400px;float:left">
        
            
        </div>
        <div style="width:50%;float:left"><br /><br />
         <asp:Label ID="lblnewcatname" runat="server" Visible="false" AssociatedControlID="txtNewCatname">Issue Category Name</asp:Label>
                            <asp:TextBox runat="server" ID="txtNewCatname" Visible="false" />
                            <asp:RequiredFieldValidator enabled="false" ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtNewCatname" CssClass="field-validation-error" ErrorMessage="Issue Category is required." />

         <asp:Label ID="lblnewdesc" runat="server" Visible="false" AssociatedControlID="txtnewCatDesc">Issue Category Description</asp:Label>
                            <asp:TextBox runat="server" ID="txtnewCatDesc" Visible="false"  />
                            <asp:RequiredFieldValidator enabled="false" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnewCatDesc" CssClass="field-validation-error" ErrorMessage="Issue Description is required." />
        
        <asp:Button ID="btnSave" Text="Save Category" runat="server" visible="false" />
        </div>
        </ContentTemplate> 
        </asp:UpdatePanel> 

</asp:Content> 