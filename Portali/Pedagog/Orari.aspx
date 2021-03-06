﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orari.aspx.cs" Inherits="Portali.Pedagog.Orari" %>
<%@Register TagPrefix="meta" TagName="HeadP" Src="../Controls/HeadP.ascx" %>
<%@Register TagPrefix="meta" TagName="NavP" Src="../Controls/NavP.ascx" %>
<%@Register TagPrefix="meta" TagName="MenuP" Src="../Controls/MenuP.ascx" %>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta:HeadP runat="server"></meta:HeadP>
</head>
<body class="fix-header">
 <meta:NavP runat="server"></meta:NavP>
 <meta:MenuP runat="server"></meta:MenuP>
 <div id="page-wrapper">
   <div class="container-fluid">
     <div class="row bg-title">
       <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12">
         <h1 id="Titull" runat="server" class="page-title">Orari mësimor</h1>
       </div>
      </div>
      <div class="row" id="Permbajtje" runat="server">
       <form id="form1" runat="server">
        <div class="col-md-12 content">
         <div class="container" style="width:auto;">
           <div style="margin: 0 auto; width:100%; height:485px;">
            <object type="text/html" data="http://37.139.119.36:81/orari/"
            style="width:100%; height:100%; margin:1%;">
            </object>
          </div>   
         </div> 
       </div>  
     </form>
    </div>
   </div>      
  </div>
  <footer class="footer text-center"> 2018 &copy; Fakulteti i Shkencave Të Natyrës | Universiteti i Tiranës </footer>
  <script src="../Assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
  <script src="../Assets/js/jquery.slimscroll.js"></script>
  <script src="../Assets/js/custom.min.js"></script>
</body>
</html>
