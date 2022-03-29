<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HomeWorkLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <div class="container" style="position: absolute; left: 0; right: 0; top: 50%; transform: translateY(-50%); -ms-transform: translateY(-50%); -moz-transform: translateY(-50%); -webkit-transform: translateY(-50%); -o-transform: translateY(-50%);">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-9 col-xl-9 col-xxl-7">
                        <div class="card shadow-lg o-hidden border-0 my-5">
                            <div class="card-body p-0">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="p-5">
                                            <div class="text-center">
                                                <h2 class="text-dark mb-4">Login</h2>
                                            </div>
                                            <form class="user">
                                                <div class="mb-3">
                                                    <asp:TextBox ID="txtUsername" runat="server" class="form-control form-control-user" type="text" placeholder="Username" name="username" required=""></asp:TextBox>
                                                </div>
                                                <div class="mb-3">
                                                    <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-user" type="password" placeholder="Password" name="password" required=""></asp:TextBox>
                                                </div>
                                                <div class="mb-3">
                                                    <div class="custom-control custom-checkbox small">
                                                        <div class="form-check">
                                                            <asp:CheckBox  ID="chRemember" runat="server" />
                                                            <label class="form-check-label custom-control-label" for="formCheck">Remember Me</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:Button ID="btnSubmit" runat="server" Text="Submit " class="btn btn-primary d-block btn-user w-100" OnClick="btnSubmit_Click"  />
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
