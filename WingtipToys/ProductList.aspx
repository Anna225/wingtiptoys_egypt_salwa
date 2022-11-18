<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
         CodeBehind="ProductList.aspx.cs" Inherits="WingtipToys.ProductList" %>
<%@ Register Src="~/ShoppingCart.ascx" TagPrefix="uc" TagName="ShoppingCartProvider" %>
    

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="Stylesheet" href="/Content/product.css" type="text/css" />
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-7">
            <div class="card">
                <div class="row">
                    <hgroup>
                        <h2 class="product-font" style="font-weight:bold;margin-left:10px">Select Category</h2>
                    </hgroup>
                    <div id="CategoryMenu" style="text-align: center" class="category-container col-md-12">       
                        <asp:ListView ID="ListView1"  
                            ItemType="WingtipToys.Models.Category" 
                            runat="server"
                            SelectMethod="GetCategories" >
                            <ItemTemplate>
                                <a class="category-button" href="<%#: GetRouteUrl("ProductsByCategoryRoute", new {categoryName = Item.CategoryName}) %>">
                                    <img src="/Images/categorys/<%#: Item.Description %>" width="24" height="24" class="category-img"/>
                                    <p class="product-font"><%#: Item.CategoryName %></p>
                                </a>
                            </ItemTemplate>
                            <ItemSeparatorTemplate></ItemSeparatorTemplate>
                        </asp:ListView>
                    </div>
                </div>
                <div class="row">
                    <hgroup>
                        <h2 class="product-font" style="font-weight:bold; margin-left:10px">Products</h2>
                    </hgroup>    
                    <div class="search-input-wrapper col-md-12">
                        <div class="search-input">
                            <asp:TextBox ID="SearchForm" CssClass="form-control" placeholder="search product..." runat="server" AutoCompleteType="Office"   >
                            </asp:TextBox>
                            <span role="img" aria-label="search" class="anticon anticon-search">
                                <svg viewBox="64 64 896 896" focusable="false" data-icon="search" width="1em" height="1em" fill="currentColor" aria-hidden="true">
                                    <path d="M909.6 854.5L649.9 594.8C690.2 542.7 712 479 712 412c0-80.2-31.3-155.4-87.9-212.1-56.6-56.7-132-87.9-212.1-87.9s-155.5 31.3-212.1 87.9C143.2 256.5 112 331.8 112 412c0 80.1 31.3 155.5 87.9 212.1C256.5 680.8 331.8 712 412 712c67 0 130.6-21.8 182.7-62l259.7 259.6a8.2 8.2 0 0011.6 0l43.6-43.5a8.2 8.2 0 000-11.6zM570.4 570.4C528 612.7 471.8 636 412 636s-116-23.3-158.4-65.6C211.3 528 188 471.8 188 412s23.3-116.1 65.6-158.4C296 211.3 352.2 188 412 188s116.1 23.2 158.4 65.6S636 352.2 636 412s-23.3 116.1-65.6 158.4z">
                                    </path>
                                </svg>
                            </span>
                        </div>
                        <span>16 Results</span>
                    </div>
                    
                    <asp:ListView ID="ListView2" runat="server" 
                            DataKeyNames="ProductID" 
                            class="col-md-12"
                            ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts" >
                         
                            <EmptyDataTemplate>
                                <table>
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <td/>
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr  id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server">
                                     
                                    </td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <div class="col-md-4 col-sm-6 ">
                                    <a class="product-card" href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                        <div class="product-thumbnail" href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.ProductName}) %>">
                                                <img src='/Images/Products/<%#:Item.ImagePath%>'  />
                                                <asp:Label ID="ItemCount" runat="server"></asp:Label>
                                            </div>
                                        <div class="product-details">
                                            <p class="product-name product-font" style="margin:0; font-size:14px"> <%#:Item.ProductName%></p>
                                            <span style="color:deepskyblue;font-size:16px;text-align:center">
                                                    <%#:String.Format("{0:c}", Item.UnitPrice)%>
                                            </span>
                                            <br />             
                                            <span class="ProductListItem" >
                                                    <b class="product-font" style="color:limegreen; font-size:16px; font-weight:bold">In Stock (14981)</b>
                                                </span>           
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div class="row" id="groupPlaceholderContainer" runat="server" style="margin-top:20px; margin-left:5px">
                                    <div id="groupPlaceholder" runat="server">
                                    </div>
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                </div>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="card">
                <uc:ShoppingCartProvider runat="server"  />
            </div>
          </div>
        </div>
      </div>
    </section>

</asp:Content>