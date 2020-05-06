<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckQuest.aspx.cs" Inherits="HomeoClinic.CheckQuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Questions</title>
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
            <h1 style="font-size: 23px; color: black;">Answer<span style="color:red"> Questions</span></h1>
        </div>
            <<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                        
                                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Qid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="Qid" HeaderText="Qid" InsertVisible="False" ReadOnly="True" SortExpression="Qid" />
                                            <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                                            <asp:BoundField DataField="QTime" HeaderText="QTime" SortExpression="QTime" />
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HomeoClinicWebsite %>" DeleteCommand="DELETE FROM [Question] WHERE [Qid] = @original_Qid AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([QTime] = @original_QTime) OR ([QTime] IS NULL AND @original_QTime IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL))" InsertCommand="INSERT INTO [Question] ([Question], [QTime], [Uid]) VALUES (@Question, @QTime, @Uid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Question]" UpdateCommand="UPDATE [Question] SET [Question] = @Question, [QTime] = @QTime, [Uid] = @Uid WHERE [Qid] = @original_Qid AND (([Question] = @original_Question) OR ([Question] IS NULL AND @original_Question IS NULL)) AND (([QTime] = @original_QTime) OR ([QTime] IS NULL AND @original_QTime IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Qid" Type="Int32" />
                                            <asp:Parameter Name="original_Question" Type="String" />
                                            <asp:Parameter Name="original_QTime" Type="String" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Question" Type="String" />
                                            <asp:Parameter Name="QTime" Type="String" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Question" Type="String" />
                                            <asp:Parameter Name="QTime" Type="String" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                            <asp:Parameter Name="original_Qid" Type="Int32" />
                                            <asp:Parameter Name="original_Question" Type="String" />
                                            <asp:Parameter Name="original_QTime" Type="String" />
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
