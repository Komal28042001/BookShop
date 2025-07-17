<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShop.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css" />
</head>
    
<body>
    <div class="container">
        <div class="row mt-1 mb-4 col align-content-sm-center">

        </div>
         <div class="row">
            <div class="col-md-4">

            </div>
             <div class="col-md-4">
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <div class="col"></div>
                <div class="">

                </div>
            </div>
            <%--<img src="../Assets/Images/book1.png" class="align-content-center">--%>
            <img src="../Assets/Images/book1.png" class="align-content-center align-content-md-center"/>
        </div>
         <div class="mt-9">
             <label for="" class="form-label" >User Name</label>
             <input type="email" placeholder="Your Email Here" autocomplete="off" runat="server" id="UNameTb" class="form-control"/>
         </div>
          <div class="mt-3">
             <label for="" class="form-label" >Password</label>
             <input type="password" placeholder="Password" autocomplete="off" runat="server" id="PasswordTb" class="form-control"/>
         </div>
         <div class="mt-3 d-grid">
             <asp:Label runat="server" id="ErrMsg" class="text-danger text-center" ></asp:Label><br />
             <asp:Button Text="Login" runat="server" Class="btn-success btn" ID="LoginBtn" OnClick="LoginBtn_Click"/>
            
         </div>
    </form>
                 <div class="col-md-4">

                 </div>
            </div>
     
        </div>

    </div>
    
</body>
</html>
