<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profili.aspx.cs" Inherits="Portali.Root.Profili" %>
<%@Register TagPrefix="meta" TagName="HeadA" Src="../Controls/HeadA.ascx" %>
<%@Register TagPrefix="meta" TagName="NavA" Src="../Controls/NavA.ascx" %>
<%@Register TagPrefix="meta" TagName="MenuA" Src="../Controls/MenuA.ascx" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta:HeadA runat="server"></meta:HeadA>
</head>
<body class="fix-header">
<meta:NavA runat="server"></meta:NavA>
        <meta:MenuA runat="server"></meta:MenuA>
    <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">
                        <h1 id="Titull" runat="server" class="page-title">Profili i Administratorit</h1> </div>
                </div>
             <div class="row" id="Permbajtje" runat="server">
                <div class="row-eq-height" >
                     <div class="col-md-4 col-xs-12" >
                        <div class="white-box" style="height:524px">
                            <div class="user-bg"> 
                                <div class="overlay-box">
                                    <div class="user-content" style=" margin-top: 10px;">
                                        <a href="javascript:void(0)"><asp:Image CssClass="thumb-lg img-circle" runat="server" ID="Profil_Picture" alt="img"></asp:Image></a>
                                        <h3 id="Emri" class="text-white" runat="server">ADMINISTRATORI</h3>
                                        <h4 id="Email" runat="server" class="text-white">support@fshn.edu.al</h4> 
                                        <h4 id="Numer" runat="server" class="text-white" >042256811</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xs-12">                                              
                        <div class="white-box">
                            <form id="form1" runat="server" class="form-horizontal form-material">

                                <div class="form-group">
                                    <label class="col-md-12">Password i Ri</label>
                                    <div class="col-md-12">
                                        <asp:TextBox TextMode="Password" CssClass="form-control form-control-line" runat="server" ID="Password" placeholder="Vendos Passwordin e ri"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Password"  runat="server" ErrorMessage="Ju Lutem Plotesoni Fushen"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Konfirmo Password-in</label>
                                     <div class="col-md-12">
                                        <asp:TextBox TextMode="Password" CssClass="form-control form-control-line" runat="server" ID="Password_Confirm" placeholder="Rishkruaj Passwordin"></asp:TextBox>
                                        <asp:CompareValidator ID="Compare1"  ControlToValidate="Password" ControlToCompare="Password_Confirm" 
                                                              Type="String"  EnableClientScript="false"  Text="Passwordet nuk perputhen"  runat="server"/>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Password_Confirm" runat="server" ErrorMessage="Ju Lutem Plotesoni Fushen"></asp:RequiredFieldValidator>
                                      </div>
                               </div>
                                <div class="form-group">
                                    <div class="col-sm-12">                                      
                                        <asp:Button CssClass="btn btn-success" ID="Update" runat="server" OnClick="Ndrysho" Text="Ndrysho"></asp:Button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                        </div>
           </div>
              </div>      
            </div>
            <footer class="footer text-center"> 2018 &copy; Fakulteti i Shkencave Të Natyrës | Universiteti i Tiranës </footer>
<script src="../Assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <script src="../Assets/js/jquery.slimscroll.js"></script>
    <script src="../Assets/js/custom.min.js"></script>
</body>
</html>
