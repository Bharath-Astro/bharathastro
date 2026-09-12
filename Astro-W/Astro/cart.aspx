<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Cart</h1> 

                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        <!--</div>-->
        </section>
      
        <section class="as_cartsingle_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <div class="table-responsive a_cart_table">
                            <table class="table">
                                <tbody><tr>
                                    <th>Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="prod_thumb">
                                            <img src="https://dummyimage.com/50x59" alt="" class="img-responsive">
                                        </span>
                                        <div class="product_details">
                                            <h4><a href="#">Rudraksha</a></h4>
                                        </div>
                                    </td>
                                    <td>$300</td>
                                    <td><input type="number" name="pro_quantity" class="pro_quantity form-control" value="1"></td>
                                    <td>$300</td>
                                    <td>
                                        <span class="close_pro"><i class="fa fa-trash"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="prod_thumb">
                                            <img src="https://dummyimage.com/50x59" alt="" class="img-responsive">
                                        </span>
                                        <div class="product_details">
                                            <h4><a href="#">Rudraksha</a></h4>
                                        </div>
                                    </td>
                                    <td>$299</td>
                                    <td><input type="number" name="pro_quantity" class="pro_quantity form-control" value="2"></td>
                                    <td>$299</td>
                                    <td>
                                        <span class="close_pro"><i class="fa fa-trash"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="prod_thumb">
                                            <img src="https://dummyimage.com/50x59" alt="" class="img-responsive">
                                        </span>
                                        <div class="product_details">
                                            <h4><a href="#">Rudraksha</a></h4>
                                        </div>
                                    </td>
                                    <td>$300</td>
                                    <td><input type="number" name="pro_quantity" class="pro_quantity form-control" value="3"></td>
                                    <td>$300</td>
                                    <td>
                                        <span class="close_pro"><i class="fa fa-trash"></i></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <div class="cupon_code_wrap">
                                            <input type="text" name="cupon_code" placeholder="####" class="cupon_code form-control">
                                            <button type="submit" class="cupon_btn as_btn" value="Apply Cupon Code">Apply Coupon Code</button>
                                        </div>
                                    </td>
                                    <td>Total</td>
                                    <td>$899</td>
                                </tr>
                            </tbody></table>
                        </div>
                        <a href="checkout.html" class="proceed_btn as_btn" value="Apply Cupon Code">checkout</a>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>