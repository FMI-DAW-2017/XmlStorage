<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Movies.aspx.cs" Inherits="XmlStorage.Movies" %>

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
	<div class="section section-about-us">
        <div class="container">
			<div class="button-container">
				<asp:HyperLink ID="HyperLinkHome" 
                            CssClass="btn btn-primary btn-round btn-lg" 
                            runat="server" 
                            NavigateUrl="~/AddMovie.aspx"> Add a movie </asp:HyperLink>
            </div>

			<h3 class="title">Movie List</h3>
            <div class="row">
                <div class="col-md-12">
					
				</div>
			</div>
		</div>
	</div>
</asp:Content>