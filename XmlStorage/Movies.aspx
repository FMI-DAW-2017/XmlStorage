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
			
			<asp:XmlDataSource id="MovieList" 
			    runat="server" 
			    DataFile="~/Movies.xml" 
			    XPath="moviestore/movie"></asp:XmlDataSource>
			
            <div class="row">
                <div class="col-md-12">
					<table class="table table-bordered">
                        <thead>
					        <th scope="col">#</th>
							<th scope="col">Poster</th>
							<th scope="col">Title</th>
                            <th scope="col">Year</th>
                            <th scope="col">Director</th>
							<th scope="col">Genre</th>
							<th scope="col">Duration</th>
							<th scope="col">Actors</th>
						</thead>
						<tbody>
                            <asp:Repeater id="MovieRepeater" runat="server" DataSourceID="MovieList">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# XPath("@ID") %></td>
										<td><img runat="server" class="rounded" width="120" height="190" src='<%# "~/posters/" + XPath("@ID") + ".jpg" %>'></td>
                                        <td><%# XPath("title") %></td>
										<td><%# XPath("@year") %></td>
                                        <td><%# XPath("director") %></td>
										<td><%# XPath("@genre") %></td>
										<td><%# XPath("@duration") %> mins</td>
										<td>
                                            <asp:Repeater id="ActorsRepeater" runat="server" DataSource='<%# XPathSelect("actor") %>'>
                                                <ItemTemplate>
                                                    <%# XPath(".") %>
												</ItemTemplate>
								                <SeparatorTemplate>, </SeparatorTemplate>
											</asp:Repeater>
										</td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</asp:Content>