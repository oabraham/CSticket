<%@ Page Language="vb" Title="Call Log" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Log.aspx.vb" Inherits="CustomerServiceLog.Log" %>

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
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent"  >
   <div class="divgrid" >
        <table >

            <tr>
                <td><asp:TextBox ID="txtCompID" runat="server" ToolTip="CompID" Text="CompID" /></td>
                <td><img id="imgRefresh" src="Images/refresh_256.png" class="refresh-img-class"  /></td>
            </tr>
            <tr>
                <td><asp:LinkButton ID="lblExport" runat="server" Text="Export To Excel"></asp:LinkButton></td>
                <td></td>
            </tr>
        </table>
        
        <asp:GridView ID="grdLog" runat="server" width="100%"
            GridLines="Horizontal"  ShowHeaderWhenEmpty="True"
            AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="tblsrvcallLogDS" AllowSorting="False" CellSpacing="5" >
            <HeaderStyle BackColor="#336699" ForeColor="White" HorizontalAlign="Left" Height="25" Width="100%" Font-Size="11px"   />
            <RowStyle Font-Size="10px" />
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CustomerName" HeaderText=" Customer Name " SortExpression="CustomerName" />
                    <asp:BoundField DataField="CompID" HeaderText="CompID" SortExpression="CompID" />
                    <asp:BoundField DataField="TaskID" HeaderText="Task ID" SortExpression="Task ID" />
                    <asp:BoundField DataField="OtherCust" HeaderText=" Other Cust " SortExpression="OtherCust" />
                   
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="OtherContact" HeaderText=" Other Contact " SortExpression="OtherContact" />
                  
                    
                    <asp:TemplateField HeaderText=" Reason  ">
                        <ItemTemplate>
                            <asp:textbox runat="server" TextMode="MultiLine" width="200px" Rows="2" id="txtReason" Text='<%# Eval("Reason")%>' >
                            </asp:textbox>  
                        </ItemTemplate>
                    </asp:TemplateField>
               
                    <asp:TemplateField HeaderText=" Solution  ">
                        <ItemTemplate>
                            <asp:textbox runat="server" TextMode="MultiLine" width="200px" Rows="2" id="txtSolution" Text='<%# Eval("Solution")%>' >
                            </asp:textbox>  
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="TransferOSI" HeaderText=" Transfer OSI " SortExpression="TransferOSI" />
                   
                    <asp:BoundField DataField="EndTime" HeaderText=" End Time " SortExpression="EndTime" />
                    <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="tblsrvcallLogDS" runat="server" ConnectionString="<%$ ConnectionStrings:BPOConnectionString %>" SelectCommand="" >

            </asp:SqlDataSource>
       <asp:HiddenField ID="hidCompID" runat="server" />
</div>
 
    <script>

        $( document ).ready(function() {
            
            $("#imgRefresh").click(function () {
                window.open("Log.aspx?CompID=" + $("#<%=txtCompID.ClientID%>").val() , "_self", "", true);
            });

        });
    </script>


    </asp:Content> 
