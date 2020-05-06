<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckTime.aspx.cs" Inherits="HomeoClinic.CheckTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Time</title>
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
            <h1 style="font-size: 23px; color: black;">Check<span style="color:red"> And Update Time</span></h1>
        </div>
            <<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                                                                                                                                               
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Conid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Conid" HeaderText="Conid" InsertVisible="False" ReadOnly="True" SortExpression="Conid" />
                                            <asp:BoundField DataField="Ctime" HeaderText="Ctime" SortExpression="Ctime" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HomeoClinicWebsite %>" DeleteCommand="DELETE FROM [ConsultationTime] WHERE [Conid] = @original_Conid AND (([Ctime] = @original_Ctime) OR ([Ctime] IS NULL AND @original_Ctime IS NULL))" InsertCommand="INSERT INTO [ConsultationTime] ([Ctime]) VALUES (@Ctime)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ConsultationTime]" UpdateCommand="UPDATE [ConsultationTime] SET [Ctime] = @Ctime WHERE [Conid] = @original_Conid AND (([Ctime] = @original_Ctime) OR ([Ctime] IS NULL AND @original_Ctime IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Conid" Type="Int32" />
                                            <asp:Parameter Name="original_Ctime" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Ctime" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Ctime" Type="String" />
                                            <asp:Parameter Name="original_Conid" Type="Int32" />
                                            <asp:Parameter Name="original_Ctime" Type="String" />
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
