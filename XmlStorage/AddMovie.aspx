<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMovie.aspx.cs" Inherits="XmlStorage.AddMovie" %>

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
	<form id="form1" runat="server">
        <div class="section section-contact-us text-center">
            <div class="container">
                <h2 class="title">Add a movie</h2>
                <div class="row">
                    <div class="col-lg-6 text-center col-md-8 ml-auto mr-auto">
                        <div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <input type="text" class="form-control" placeholder="Title">
                        </div>
                       
                        <div class="send-button">
							<asp:Button ID="BAddMovie" runat="server" Text="Add" CssClass="btn btn-primary btn-round btn-block btn-lg" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</form>
</asp:Content>