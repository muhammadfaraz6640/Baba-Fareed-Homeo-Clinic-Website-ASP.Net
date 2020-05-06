<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeeDoctors.aspx.cs" Inherits="HomeoClinic.SeeDoctors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Blogs</title>
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
            <h1 style="font-size: 23px; color: black;">See All<span style="color:red"> Doctors</span></h1>
        </div>
            <<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Did" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Did" HeaderText="Did" InsertVisible="False" ReadOnly="True" SortExpression="Did" />
                                            <asp:BoundField DataField="DocName" HeaderText="DocName" SortExpression="DocName" />
                                            <asp:BoundField DataField="DocEmail" HeaderText="DocEmail" SortExpression="DocEmail" />
                                            <asp:BoundField DataField="DocGender" HeaderText="DocGender" SortExpression="DocGender" />
                                            <asp:BoundField DataField="DocQualification" HeaderText="DocQualification" SortExpression="DocQualification" />
                                            <asp:BoundField DataField="DContact" HeaderText="DContact" SortExpression="DContact" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HomeoClinicWebsite %>" DeleteCommand="DELETE FROM [Doctor] WHERE [Did] = @original_Did AND (([DocName] = @original_DocName) OR ([DocName] IS NULL AND @original_DocName IS NULL)) AND (([DocEmail] = @original_DocEmail) OR ([DocEmail] IS NULL AND @original_DocEmail IS NULL)) AND (([DocGender] = @original_DocGender) OR ([DocGender] IS NULL AND @original_DocGender IS NULL)) AND (([DocQualification] = @original_DocQualification) OR ([DocQualification] IS NULL AND @original_DocQualification IS NULL)) AND (([DContact] = @original_DContact) OR ([DContact] IS NULL AND @original_DContact IS NULL))" InsertCommand="INSERT INTO [Doctor] ([DocName], [DocEmail], [DocGender], [DocQualification], [DContact]) VALUES (@DocName, @DocEmail, @DocGender, @DocQualification, @DContact)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Did], [DocName], [DocEmail], [DocGender], [DocQualification], [DContact] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [DocName] = @DocName, [DocEmail] = @DocEmail, [DocGender] = @DocGender, [DocQualification] = @DocQualification, [DContact] = @DContact WHERE [Did] = @original_Did AND (([DocName] = @original_DocName) OR ([DocName] IS NULL AND @original_DocName IS NULL)) AND (([DocEmail] = @original_DocEmail) OR ([DocEmail] IS NULL AND @original_DocEmail IS NULL)) AND (([DocGender] = @original_DocGender) OR ([DocGender] IS NULL AND @original_DocGender IS NULL)) AND (([DocQualification] = @original_DocQualification) OR ([DocQualification] IS NULL AND @original_DocQualification IS NULL)) AND (([DContact] = @original_DContact) OR ([DContact] IS NULL AND @original_DContact IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Did" Type="Int32" />
                                            <asp:Parameter Name="original_DocName" Type="String" />
                                            <asp:Parameter Name="original_DocEmail" Type="String" />
                                            <asp:Parameter Name="original_DocGender" Type="String" />
                                            <asp:Parameter Name="original_DocQualification" Type="String" />
                                            <asp:Parameter Name="original_DContact" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="DocName" Type="String" />
                                            <asp:Parameter Name="DocEmail" Type="String" />
                                            <asp:Parameter Name="DocGender" Type="String" />
                                            <asp:Parameter Name="DocQualification" Type="String" />
                                            <asp:Parameter Name="DContact" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="DocName" Type="String" />
                                            <asp:Parameter Name="DocEmail" Type="String" />
                                            <asp:Parameter Name="DocGender" Type="String" />
                                            <asp:Parameter Name="DocQualification" Type="String" />
                                            <asp:Parameter Name="DContact" Type="String" />
                                            <asp:Parameter Name="original_Did" Type="Int32" />
                                            <asp:Parameter Name="original_DocName" Type="String" />
                                            <asp:Parameter Name="original_DocEmail" Type="String" />
                                            <asp:Parameter Name="original_DocGender" Type="String" />
                                            <asp:Parameter Name="original_DocQualification" Type="String" />
                                            <asp:Parameter Name="original_DContact" Type="String" />
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
