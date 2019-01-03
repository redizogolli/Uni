﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuP.ascx.cs" Inherits="Portali.Controls.MenuP" %>

  <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Pedagog</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <asp:Hyperlink runat="server" NavigateUrl="../Pedagog/Shto_Njoftim.aspx" class="waves-effect"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Njoftime</asp:Hyperlink>
                    </li>
                    <li>
                        <asp:Hyperlink runat="server" NavigateUrl="../Pedagog/Shto_Nota.aspx" class="waves-effect"><i class="fa fa-book fa-fw" aria-hidden="true"></i>Rezultatet</asp:Hyperlink>
                    </li>
                    <li>
                        <asp:Hyperlink runat="server" NavigateUrl="../Pedagog/Shto_Leksion.aspx" class="waves-effect"><i class="fa fa-mortar-board fa-fw" aria-hidden="true"></i>Leksione</asp:Hyperlink>
                    </li>
                    <li>
                        <asp:Hyperlink runat="server" NavigateUrl="../Pedagog/Orari.aspx" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Orari</asp:Hyperlink>
                    </li>
                </ul>
                <div class="center p-20">
                     <asp:Hyperlink runat="server" NavigateUrl="../Pedagog/Kontakt.aspx" class="btn btn-danger btn-block waves-effect waves-light" Style="background: #ec1919;border: 1px solid #ec1919;"><i class="fa fa-info fa-fw" aria-hidden="true"></i>Kontaktoni</asp:Hyperlink>
                 </div>
            </div>
        </div>