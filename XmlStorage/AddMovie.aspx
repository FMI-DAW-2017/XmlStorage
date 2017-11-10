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

				<asp:Literal id="FormResponse" runat="server"></asp:Literal>
				<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
				
                <div class="row">
                    <div class="col-lg-6 text-center col-md-8 ml-auto mr-auto">
						
                        <div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:TextBox id="TitleTB" runat="server" CssClass="form-control" placeholder="Title"></asp:TextBox>
                        </div>
						<asp:RequiredFieldValidator id="RequiredText" 
                                runat="server" 
                                ControlToValidate="TitleTB" 
                                ErrorMessage="Title is required"></asp:RequiredFieldValidator>

						 <div class="input-group input-lg">
                            <asp:DropDownList ID="DDLYear" CssClass="form-control" runat="server" DataSource="<%# Last100Years %>"></asp:DropDownList>
						</div>

						<div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
							
                            <asp:TextBox id="DurationTB" runat="server" CssClass="form-control" placeholder="Duration"></asp:TextBox>
                        </div>
					    <asp:RequiredFieldValidator ID="RequiredDuration" 
                            runat="server" 
                            ControlToValidate="DurationTB"
                            ErrorMessage="Duration is required" ></asp:RequiredFieldValidator>
                            
                        <asp:RangeValidator ID="RangeDuration" 
                            runat="server" 
                            ControlToValidate="DurationTB" 
                            ErrorMessage="Duration must be between 10 and 500 minutes."
                            MinimumValue="10"
                            MaximumValue="500" 
                            Type="Integer"></asp:RangeValidator>
					
                        <div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:TextBox id="GenreTB" runat="server" CssClass="form-control" placeholder="Genre"></asp:TextBox>
                           
                        </div>
						<div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:TextBox id="DirectorTB" runat="server" CssClass="form-control" placeholder="Director"></asp:TextBox>
                           
                        </div>
						<div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:TextBox id="Actor1TB" runat="server" CssClass="form-control" placeholder="Actor"></asp:TextBox>
                           
                        </div>
						<div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:TextBox id="Actor2TB" runat="server" CssClass="form-control" placeholder="Actor"></asp:TextBox>
                           
                        </div>
						<div class="input-group input-lg">
                            <span class="input-group-addon">
                                <i class="now-ui-icons users_circle-08"></i>
                            </span>
                            <asp:FileUpload ID="PosterFU" runat="server" CssClass="form-control" />
                        </div>
						<asp:RequiredFieldValidator id="RequiredPoster" 
                                runat="server" 
                                ControlToValidate="PosterFU"
                                ErrorMessage="Poster is required"></asp:RequiredFieldValidator>
                        <div class="send-button">
							<asp:Button ID="BAddMovie" OnClick="AddMovie_Click" runat="server" Text="Add" CssClass="btn btn-primary btn-round btn-block btn-lg" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</form>
</asp:Content>