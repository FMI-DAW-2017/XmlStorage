<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteMovie.aspx.cs" Inherits="XmlStorage.DeleteMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
	<div class="page-header page-header-small">
        <div class="page-header-image" data-parallax="true" style="background-image: url(' <%= "~/posters/" + Request.Params["id"] + ".jpg" %> "');">
        </div>
        <div class="container">
            <div class="content-center">
                <h1 class="title"><asp:Literal id="TitleL" runat="server"></asp:Literal> (<asp:Literal id="YearL" runat="server"></asp:Literal>)</h1>
            </div>
        </div>
    </div>
	<div class="section section-contact-us text-center">
            <div class="container">
                <h2 class="title">Delete movie</h2>

            	<form id="form1" runat="server">
                	Do you want to delete this movie?


                	<asp:Button ID="BDelete" CssClass="btn btn-info btn-md" runat="server" Text="Yes" OnClick="BDelete_Click" />
                    <asp:Button ID="BCancel" CssClass="btn btn-danger btn-md" runat="server" Text="No" OnClick="BCancel_Click"/>
            	</form>
		    </div>
	    </div>
</asp:Content>