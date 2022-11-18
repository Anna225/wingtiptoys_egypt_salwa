﻿<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WingtipToys.Account.Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="d-flex flex-column flex-root" id="LoginForm">
			<div class="d-flex flex-column flex-column-fluid bgi-position-y-bottom position-x-center bgi-no-repeat bgi-size-contain bgi-attachment-fixed" style="background-image: linear-gradient(#33ccff 0%,#3366ff 100%);color:#027491; height:100vh">
				<div class="d-flex flex-center flex-column flex-column-fluid p-10 pb-lg-20">
					<a href="~/" class="mb-12 d-flex">
						<img src="data:image/jpeg;base64,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" alt="Pos Logo" width="50" height="50" class="rounded-circle"/>
						<h2 style="margin-left:20px; color:white; font-size:30px; font-family:Aclonica" class="align-self-center">Sale for Restaurant</h2>
					</a>
					
					<div class="w-lg-500px bg-body rounded shadow-sm p-10 mx-auto">
						<form class="form w-100" novalidate="novalidate" id="kt_sign_in_form" action="#">
							<div class="text-center mb-10">
								<h1 class="text-dark mb-3">Sign In to Sopify App Store</h1>
								<div class="text-gray-400 fw-bold fs-4">New Here?
									<asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">
										Create an account.
									</asp:HyperLink>
								</div>
							</div>
							<asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
								 <div class="alert alert-danger">
									 <asp:Literal runat="server" ID="FailureText" />
								  </div>
							</asp:PlaceHolder>
							<div class="fv-row mb-2">
								<asp:Label runat="server" AssociatedControlID="UserName" CssClass="form-label fs-6 fw-bolder text-dark">Email</asp:Label>
								<asp:TextBox runat="server" ID="UserName" class="form-control form-control-lg form-control-solid"  name="email" autocomplete="off" />
								<asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-warning fs-5" ErrorMessage="The user name field is required." />
							</div>
							<div class="fv-row mb-2">
								<div class="d-flex flex-stack mb-2">
									<asp:Label runat="server" AssociatedControlID="Password" CssClass="form-label fw-bolder text-dark fs-6 mb-0">Password</asp:Label>
									<a href="../../demo9/dist/authentication/flows/basic/password-reset.html" class="link-primary fs-6 fw-bolder">Forgot Password ?</a>
								</div>
								<asp:TextBox runat="server" ID="Password" CssClass="form-control form-control-lg form-control-solid" TextMode="Password" name="password" autocomplete="off" />
								<asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-warning fs-5" ErrorMessage="The password field is required." />
							</div>
							<div class="fv-row form-group">
								<div class="col-md-12">
									<div class="checkbox">
										<asp:CheckBox runat="server" ID="RememberMe" />
										<asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
									</div>
								</div>
							</div>
							<div class="text-center">
								<asp:Button runat="server" OnClick="LogIn" Text="Log in" id="kt_sign_in_submit" CssClass="btn btn-lg btn-primary w-100 mb-5">
									
								</asp:Button>

								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	<script src="~/Scripts/signin.js" type="text/javascript"></script>
</asp:Content>
