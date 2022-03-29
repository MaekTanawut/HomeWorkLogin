<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HomeWorkLogin.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container">
                <div class="row" style="height: 100vh;">
                    <div class="col-md-12 d-flex justify-content-center align-items-center">
                        <div class="d-flex justify-content-center me-2">
                            <h1">Welcome :
                                    <asp:Label ID="lbName" runat="server" Text=""></asp:Label>
                            </h1>
                        </div>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>


        </div>
    </form>
</body>
<footer>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</footer>
</html>
