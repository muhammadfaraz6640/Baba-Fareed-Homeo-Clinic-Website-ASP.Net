<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckApp.aspx.cs" Inherits="HomeoClinic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Appointments</title>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <script type="text/javascript" src="dropdown.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">        
        <div class="header bg-light shadow p-3 mb-5 bg-white rounded" >
            <h1 style="font-size: 23px; color: black;">Check<span style="color:red"> Appointment</span></h1>
        </div>
            <<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" ReadOnly="True" SortExpression="Cid" />
                    <asp:BoundField DataField="ConDAte" HeaderText="ConDAte" SortExpression="ConDAte" />
                    <asp:BoundField DataField="ConTime" HeaderText="ConTime" SortExpression="ConTime" />
                    <asp:BoundField DataField="ConType" HeaderText="ConType" SortExpression="ConType" />
                    <asp:BoundField DataField="ConReason" HeaderText="ConReason" SortExpression="ConReason" />
                    <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
                    <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                    <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HomeoClinicWebsite %>" DeleteCommand="DELETE FROM [Consultation] WHERE [Cid] = @original_Cid AND (([ConDAte] = @original_ConDAte) OR ([ConDAte] IS NULL AND @original_ConDAte IS NULL)) AND (([ConTime] = @original_ConTime) OR ([ConTime] IS NULL AND @original_ConTime IS NULL)) AND (([ConType] = @original_ConType) OR ([ConType] IS NULL AND @original_ConType IS NULL)) AND (([ConReason] = @original_ConReason) OR ([ConReason] IS NULL AND @original_ConReason IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL)) AND (([PatientName] = @original_PatientName) OR ([PatientName] IS NULL AND @original_PatientName IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL))" InsertCommand="INSERT INTO [Consultation] ([ConDAte], [ConTime], [ConType], [ConReason], [Did], [PatientName], [Uid]) VALUES (@ConDAte, @ConTime, @ConType, @ConReason, @Did, @PatientName, @Uid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Consultation]" UpdateCommand="UPDATE [Consultation] SET [ConDAte] = @ConDAte, [ConTime] = @ConTime, [ConType] = @ConType, [ConReason] = @ConReason, [Did] = @Did, [PatientName] = @PatientName, [Uid] = @Uid WHERE [Cid] = @original_Cid AND (([ConDAte] = @original_ConDAte) OR ([ConDAte] IS NULL AND @original_ConDAte IS NULL)) AND (([ConTime] = @original_ConTime) OR ([ConTime] IS NULL AND @original_ConTime IS NULL)) AND (([ConType] = @original_ConType) OR ([ConType] IS NULL AND @original_ConType IS NULL)) AND (([ConReason] = @original_ConReason) OR ([ConReason] IS NULL AND @original_ConReason IS NULL)) AND (([Did] = @original_Did) OR ([Did] IS NULL AND @original_Did IS NULL)) AND (([PatientName] = @original_PatientName) OR ([PatientName] IS NULL AND @original_PatientName IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Cid" Type="Int32" />
                    <asp:Parameter Name="original_ConDAte" Type="String" />
                    <asp:Parameter Name="original_ConTime" Type="String" />
                    <asp:Parameter Name="original_ConType" Type="String" />
                    <asp:Parameter Name="original_ConReason" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                    <asp:Parameter Name="original_PatientName" Type="String" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ConDAte" Type="String" />
                    <asp:Parameter Name="ConTime" Type="String" />
                    <asp:Parameter Name="ConType" Type="String" />
                    <asp:Parameter Name="ConReason" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                    <asp:Parameter Name="PatientName" Type="String" />
                    <asp:Parameter Name="Uid" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ConDAte" Type="String" />
                    <asp:Parameter Name="ConTime" Type="String" />
                    <asp:Parameter Name="ConType" Type="String" />
                    <asp:Parameter Name="ConReason" Type="String" />
                    <asp:Parameter Name="Did" Type="Int32" />
                    <asp:Parameter Name="PatientName" Type="String" />
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="original_Cid" Type="Int32" />
                    <asp:Parameter Name="original_ConDAte" Type="String" />
                    <asp:Parameter Name="original_ConTime" Type="String" />
                    <asp:Parameter Name="original_ConType" Type="String" />
                    <asp:Parameter Name="original_ConReason" Type="String" />
                    <asp:Parameter Name="original_Did" Type="Int32" />
                    <asp:Parameter Name="original_PatientName" Type="String" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
     </form>
</body>
</html>
