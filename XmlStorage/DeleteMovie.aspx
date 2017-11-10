<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteMovie.aspx.cs" Inherits="XmlStorage.DeleteMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
	<div class="page-header page-header-small">
        <div class="page-header-image" data-parallax="true" style="background-image: url('img/bg6.jpg');">
        </div>
        <div class="container">
            <div class="content-center">
                <h1 class="title">This is our great company.</h1>
                <div class="text-center">
                    <a href="#pablo" class="btn btn-primary btn-icon btn-round">
                        <i class="fa fa-facebook-square"></i>
                    </a>
                    <a href="#pablo" class="btn btn-primary btn-icon btn-round">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#pablo" class="btn btn-primary btn-icon btn-round">
                        <i class="fa fa-google-plus"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
	<div class="section section-contact-us text-center">
            <div class="container">
                <h2 class="title">Delete movie</h2>

            	<form id="form1" runat="server">
                	Do you want to delete <asp:Literal id="TitleL" runat="server"></asp:Literal> from <asp:Literal id="YearL" runat="server"></asp:Literal>?


                	<asp:Button ID="BDelete" runat="server" Text="Yes" Width="50" OnClick="BDelete_Click" />
                    <asp:Button ID="BCancel" runat="server" Text="No" Width="50" OnClick="BCancel_Click"/>
            	</form>
		    </div>
	    </div>
</asp:Content>