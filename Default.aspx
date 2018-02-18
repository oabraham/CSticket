<%@ Page Title="Customer Service Call Log " Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="CustomerServiceLog._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">

            <hgroup class="title">
                <h1 style="font-family:Arial;font-size:26px"><%: Title  %></h1>
                <h2></h2>
            </hgroup>
            
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:UpdatePanel ID="mainUpdatePanel" runat="server"><ContentTemplate>
  <div style="float:left;width:45%; height: 715px;"> 
    <fieldset>
                    <legend>Incident Form</legend>
                    <ol>
                        <li>
                            <asp:Label ID="lblCustomerName" runat="server" AssociatedControlID="ddlCustomerName">Customer Name</asp:Label>
                            <asp:dropdownlist runat="server" ID="ddlCustomerName" cssclass="dropdowns"  AutoPostBack="True" >                
                            </asp:dropdownlist>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCustomerName" CssClass="field-validation-error" ErrorMessage="Customer name field is required." />
                            
                        </li>
                        <li>
                            
                            <asp:Label ID="lblCustomerID" runat="server" AssociatedControlID="txtCustomerID">Customer ID</asp:Label>
                            <asp:TextBox runat="server" ID="txtCustomerID"   />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCustomerID" CssClass="field-validation-error" ErrorMessage="Customer ID is required." />
                              
                        </li>
                        <li>
                            <asp:Label Visible="false"  ID="lblOtherCustomer" runat="server" AssociatedControlID="txtOtherCustomerID">Other Customer</asp:Label>
                            <asp:TextBox Visible="false"  runat="server" ID="txtOtherCustomerID" />
                            <asp:RequiredFieldValidator Enabled="false"  ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOtherCustomerID" CssClass="field-validation-error" ErrorMessage="Other Customer Name is required." />
                        </li>
                        <li> 
                      
                            <asp:Label ID="lblContact" runat="server" AssociatedControlID="ddlContact">Contact</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlContact" cssclass="dropdowns" AutoPostBack="True" >                  
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlContact" CssClass="field-validation-error" ErrorMessage="Contact is required." />
                        </li>
                         <li>
                             <br />
                            <asp:Label ID="lblEmailClient" runat="server" AssociatedControlID="txtEmailClient">Client Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtEmailClient" AutoPostBack="True" />
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" enabled="false" runat="server" ControlToValidate="txtEmailClient" CssClass="field-validation-error" ErrorMessage="Client email is required." />--%>
                        </li>
                         <li>
                            <asp:Label Visible="false" ID="lblOtherContact" runat="server" AssociatedControlID="txtOtherContact">Other Contact</asp:Label>
                            <asp:TextBox runat="server" ID="txtOtherContact" Visible="false" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" enabled="false" runat="server" ControlToValidate="txtOtherContact" CssClass="field-validation-error" ErrorMessage="Other Contact is required." />
                        </li>
                         <li>
                            <asp:Label ID="lblManager" runat="server" AssociatedControlID="txtManager">Manager</asp:Label>
                            <asp:TextBox runat="server" ID="txtManager" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtManager" CssClass="field-validation-error" ErrorMessage="Manager is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblManagerEmail" runat="server" AssociatedControlID="txtManagerEmail">Manager Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtManagerEmail" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtManagerEmail" CssClass="field-validation-error" ErrorMessage="Manager Email is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblTransfer" runat="server" AssociatedControlID="ddlTransfer">Transfer to OSI Employee</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlTransfer" cssclass="dropdowns" AutoPostBack="True" >                  
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator Enabled="false"  ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlTransfer" CssClass="field-validation-error" ErrorMessage="Transfer to is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblOsiEmail" runat="server" AssociatedControlID="txtOsiEmail">OSI Employee Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtOsiEmail" />
                            <asp:RequiredFieldValidator enabled="false" ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtOsiEmail" CssClass="field-validation-error" ErrorMessage="OSI Employee Email is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblDepart" runat="server" AssociatedControlID="ddlDepart">Department</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlDepart" cssclass="dropdowns" >                  
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator14" runat="server" ControlToValidate="ddlDepart" CssClass="field-validation-error" ErrorMessage="Department is required." />
                        </li>
                    </ol>

    </fieldset> 
  </div>
  <div style="float:left;width:40%; height: 850px;">
      <fieldset>
                    <legend>Incident Form</legend>
                    <ol>
                        <li>
                            <asp:Label ID="lblReason" runat="server" AssociatedControlID="txtReason">Reason</asp:Label>
                            <asp:TextBox  ID="txtReason" TextMode="multiline" Columns="30" rows="7" runat="server" AutoPostBack="True"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10"   runat="server" ControlToValidate="txtReason" CssClass="field-validation-error" ErrorMessage="Reason is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblIssueCat" runat="server" AssociatedControlID="ddlCategory">Issue Category</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlIssueCat" cssclass="dropdowns" >                  
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator12" runat="server" ControlToValidate="ddlIssueCat" CssClass="field-validation-error" ErrorMessage="Issue Category is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblCategory" runat="server" AssociatedControlID="ddlCategory">Task Category</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlCategory" cssclass="dropdowns" >                  
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator  ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlCategory" CssClass="field-validation-error" ErrorMessage="Category is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblSolution" runat="server" AssociatedControlID="txtSolution">Solution</asp:Label>
                            <asp:TextBox  ID="txtSolution" TextMode="multiline" Columns="30" rows="8" runat="server" AutoPostBack="True"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13"   runat="server" ControlToValidate="txtSolution" CssClass="field-validation-error" ErrorMessage="Solution is required." />
                        </li>
                        <li>
                            <asp:Label ID="lblNotifyEmail" runat="server" AssociatedControlID="txtNotifyEmail">Notify Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtNotifyEmail" />
                            <asp:RegularExpressionValidator ControlToValidate="txtNotifyEmail" ID="RegularExpressionValidator1" runat="server"  CssClass="field-validation-error" ErrorMessage="Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </li>
                        <li>
                            <asp:HiddenField ID="startTime" runat="server"  />
                        </li>
                        <li>
                            <asp:HiddenField ID="currentTaskID" runat="server"  />
                        </li>
                        <li>
                            <asp:HiddenField ID="currentCallID" runat="server"  />
                        </li>
                    </ol>

    </fieldset> 
        <div class="divlog" >

            <span style="color:gray">Last Call:</span><a style="font-size:12px" runat="server" id="lnklog" target="_blank" href="" ></a>
            
        </div>
  </div>
        

    
    <div style="float:left;width:45%">
        <h1 style="color:#7ac0da">Task Information</h1>
        <ol style="list-style:none">
            <li>
                <asp:RadioButtonList id="rdBtnTaskLst"   runat="server"  Width="305px"  RepeatLayout="Table" RepeatColumns="2" AutoPostBack="True">
            <asp:ListItem Value="1" Selected="True" text="CS Included"  ></asp:ListItem>
            <asp:ListItem Value="2" text="NEW" ></asp:ListItem>
            </asp:RadioButtonList>

            </li>
        </ol>
        <div runat="server" id="divNewTask" visible="false" >
     <ol style="list-style:none">
       
        <li>
            <asp:Label ID="lblRequested" runat="server" AssociatedControlID="ddlRequested">Requested By: </asp:Label>
            <asp:dropdownlist ID="ddlRequested" runat="server" style="vertical-align:middle;width:100%">
            </asp:dropdownlist>
           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidatorRequestedBy" Enabled="false" ControlToValidate="txtRequested" CssClass="field-validation-error"  runat="server" ErrorMessage="Requested by Required"></asp:RequiredFieldValidator> --%>
        </li>
        <li>
            <asp:Label ID="lblAssignedTo" runat="server" AssociatedControlID="ddlAssignedTo">Assigned To: </asp:Label>
            <asp:DropDownList ID="ddlAssignedTo" runat="server" style="vertical-align:middle">
            </asp:DropDownList>
        </li>
        <li>
                <asp:Label ID="lblDateRequested" runat="server" AssociatedControlID="txtDateRequested">Date Requested: </asp:Label>
                <asp:TextBox ID="txtDateRequested" CssClass="datepic" runat="server" Style="display:inline" ></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateRequested" Enabled="false" ControlToValidate="txtDateRequested" CssClass="field-validation-error"  runat="server" ErrorMessage="Date Requested Required"></asp:RequiredFieldValidator> 
        </li>
        
        <li>
            <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription">Description: </asp:Label>
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" Rows="3" runat="server" style="width:80%"  ></asp:TextBox> 

            <asp:RequiredFieldValidator ID="RequiredFieldValidatortaskdescription" Enabled="false" ControlToValidate="txtDescription" CssClass="field-validation-error"  runat="server" ErrorMessage="Description Required"></asp:RequiredFieldValidator>
            <asp:Label ID="lblInvalidTaskDates" Text="Invalid Dates or requested date is after due date." Visible="false" runat="server" style="font-size:18px;color:red" ></asp:Label>
        </li>
    </ol>
            </div>
    </div>
    <div style="float:left;width:45%">       
       <h1 style="color:#7ac0da">Task Detail</h1>
            <ol style="list-style:none">
                <li>
                     <asp:Label ID="lblServiceBy" runat="server" AssociatedControlID="ddlServiceby">Service By: </asp:Label>
                     <asp:DropDownList ID="ddlServiceby" runat="server" style="vertical-align:middle">
                     </asp:DropDownList>
                </li>
                <li>
                    <asp:Label ID="lblStatus" runat="server" AssociatedControlID="ddlStatus">Status: </asp:Label>
                     <asp:DropDownList ID="ddlStatus" runat="server" style="vertical-align:middle">
                         <asp:ListItem Value="1"  text="Open"  ></asp:ListItem>
                         <asp:ListItem Value="2" text="Working on" Selected="True" ></asp:ListItem>
                         <asp:ListItem Value="3"  text="Waiting on client"  ></asp:ListItem>
                         <asp:ListItem Value="4"  text="Client Comment"  ></asp:ListItem>
                         <asp:ListItem Value="5"  text="Completed"  ></asp:ListItem>
                     </asp:DropDownList>

                </li>
                <li>
                <asp:Label ID="lblDueDate" runat="server" AssociatedControlID="txtDueDate">Due Date: </asp:Label>
                <asp:TextBox ID="txtDueDate" CssClass="datepic" runat="server" Style="display:inline" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDueDate" CssClass="field-validation-error"   ControlToValidate="txtDueDate" runat="server" ErrorMessage="Due Date Required"></asp:RequiredFieldValidator> 
                </li>
                <li>
                     <asp:Label ID="lblDateComplete" runat="server" AssociatedControlID="txtDateComplete">Date Completed: </asp:Label>
                    <asp:TextBox ID="txtDateComplete" cssclass="datepic" runat="server"  ></asp:TextBox>

                </li>
                <li>
                    <asp:Label ID="lblTimeExpend" runat="server" AssociatedControlID="txtTimeExpend">Time Expended: </asp:Label>
                    <asp:TextBox ID="txtTimeExpend"  runat="server"  ></asp:TextBox>
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidatorTime" runat="server" ControlToValidate="txtTimeExpend" CssClass="field-validation-error" ErrorMessage="Time is required and a number." />                    
                    <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtTimeExpend" Type="Integer"  runat="server" CssClass="field-validation-error"  ErrorMessage="Minimum value 0" MinimumValue="0" MaximumValue="100000"></asp:RangeValidator>
                    
                </li>
                <li>
                    <asp:Label ID="lblComments" runat="server" AssociatedControlID="txtComments">Comments: </asp:Label>
                    <asp:TextBox ID="txtComments" TextMode="MultiLine" Rows="3" runat="server"  ></asp:TextBox>
                    <asp:RequiredFieldValidator  ID="RequiredFieldValidatorComments" runat="server" ControlToValidate="txtComments" CssClass="field-validation-error" ErrorMessage="Comments is required." />                     

                </li>
                <li>
                    <asp:CheckBoxList ID="chkLstEmails" runat="server" RepeatColumns="2" Width="426px" >
                        <asp:ListItem Value="" Selected="True" >Customer Service</asp:ListItem>
                        <asp:ListItem Value="" Selected="True">Contact</asp:ListItem>
                        <asp:ListItem Value="" Selected="True">Manager</asp:ListItem>
                        <asp:ListItem Value="">Transfer Employee</asp:ListItem>
                        <asp:ListItem Value="" Selected="True">Assistant</asp:ListItem>
                        <asp:ListItem Value="" Selected="True">Assigned To</asp:ListItem>
                    </asp:CheckBoxList>
                </li>
            </ol>
                <asp:Button ID="btnSubmit" runat="server" width="45%" Text="Save" Visible="false"  />  <asp:Button ID="Button1" runat="server" width="45%" Text="Save" />
                <br /><asp:Label runat="server" ID="lblCompletedEmail" Text="Record Added" Visible="false" style="font-size:18px;color:red"/>
                <br /><asp:Label runat="server" ID="lblShowNoCustomerServIncTask" Text="No Customer Service Included task found for this CompID, create one to continue" Visible="false"
                    style="font-size:18px;color:red" />
                <br /><asp:Label runat="server" ID="lblShowInvalidCompleteDate" Text="Completed Date is invalid or in future OR Time expended is not a number" Visible="false"
                    style="font-size:18px;color:red" />
                <br /><asp:Label runat="server" ID="lblDateCompletedSetWithNostatus" Text="Date Completed is set without completed status" Visible="false" style="font-size:18px;color:red" />
                <br /><asp:Label runat="server" ID="lblCouldnotInsertDetail" Text="Could not insert task detail" Visible="false" style="font-size:18px;color:red" />
                <br /><asp:Label runat="server" ID="lblCouldnotInsertTask" Text="Could not insert task " Visible="false" style="font-size:18px;color:red" />
    </div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.datepic').datepicker();

        var postbackElement;

        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler);

        function EndRequestHandler(sender, args) {
            $('.datepic').datepicker();
            if (postbackElement.id != "") {
                var temp = document.getElementById(postbackElement.id);
                if (temp.type == "textarea") { temp.focus(); }
            }
        
        }

        function BeginRequestHandler(sender, args) {
            postbackElement = document.activeElement;
        }

    });
</script>

        </ContentTemplate>
  </asp:UpdatePanel>
  

  
<script>

    function pageLoad() {

        var availableTags = [];

        $("#<%=ddlCustomerName.ClientID%> option").each(function () {
            availableTags.push($(this).attr('value'));
        });

        $("#<%=txtCustomerID.ClientID%>").autocomplete({

            source: availableTags,
            select: function (event, ui) {
                $(this).val(ui.item.value);
                __doPostBack("<%=txtCustomerID.ClientID%>", "");
            }

        });

    }
    
</script>

    

</asp:Content>
