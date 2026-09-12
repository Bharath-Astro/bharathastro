<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Checkout</h1> 

                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>Checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        <!--</div>-->
        </section>
      
        <section class="as_checkout_wrapper as_padderBottom80 as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-sm-12 col-xs-12 offset-lg-1">
                        <div class="checkout_wrapper_box">
                            <ul id="progressbar">
                                <li class="active as_btn" data-active="1">Billing Details</li>
                                <li class="as_btn" data-active="2">Payment</li>
                                <li class="as_btn" data-active="3">Receipt</li>    
                            </ul>
                            <div class="woocommerce_billing text-left step" data-target="1">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="First Name*" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Last Name*" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Phone*" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Email*" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group as_select_box">
                                            <select class="form-control">
                                                <option>Country</option>
                                                <option>U.K.</option>
                                                <option>India</option>
                                                <option>Australia</option>
                                                <option>Japan</option>
                                                <option>Africa</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group as_select_box">
                                            <select class="form-control">
                                                <option>State</option>
                                                <option>England</option>
                                                <option>Madhya Pradesh</option>
                                                <option>Victoria</option>
                                                <option>Hiroshima</option>
                                                <option>Liberia</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group as_select_box">
                                            <select class="form-control">
                                                <option>City</option>
                                                <option>London</option>
                                                <option>Delhi</option>
                                                <option>Sydney</option>
                                                <option>Tokyo</option>
                                                <option>Arthington</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <div class="form-group">
                                            <input type="text" placeholder="Pincode*" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <textarea placeholder="Address*" class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group checkbox as_login_data">
                                    <label>Ship To This Address
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="text-right">
                                    <button class="as_btn next" data-step="2">Next</button>
                                </div>
                            </div>
                            <div class="woocommerce_billing step" data-target="2">
                                <div class="row">
                                    <div class="col-md-6 col-xs-12">
                                        <div class="ast_check_payment_method text-left">
                                            <div class="form-group">
                                                <label >Debit Card</label>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Card Holder Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="card number">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Security Code">
                                                </div>
                                                <div class="expiry_date">
                                                    <label>Expiry Date</label>
                                                    <div class="form-group as_select_box">
                                                        <select class="form-control">
                                                            <option>Mon</option>
                                                            <option>01</option>
                                                            <option>02</option>
                                                            <option>03</option>
                                                            <option>04</option>
                                                            <option>05</option>
                                                            <option>06</option>
                                                            <option>07</option>
                                                            <option>08</option>
                                                            <option>09</option>
                                                            <option>10</option>
                                                            <option>11</option>
                                                            <option>12</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group as_select_box">
                                                        <select class="form-control">
                                                            <option>Year</option>
                                                            <option>2018</option>
                                                            <option>2018</option>
                                                            <option>2019</option>
                                                            <option>2020</option>
                                                            <option>2022</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                            <option>2025</option>
                                                            <option>2026</option>
                                                            <option>2027</option>
                                                            <option>2028</option>
                                                            <option>2029</option>
                                                            <option>2030</option>
                                                            <option>2031</option>
                                                            <option>2032</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                        <div class="ast_check_payment_method text-left">
                                            <div class="form-group">
                                                <label>Credit Card</label>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Card Holder Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="card number">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Security Code">
                                                </div>
                                                <div class="expiry_date">
                                                    <label>Expiry Date</label>
                                                    <div class="form-group as_select_box">
                                                        <select class="form-control">
                                                            <option>Mon</option>
                                                            <option>01</option>
                                                            <option>02</option>
                                                            <option>03</option>
                                                            <option>04</option>
                                                            <option>05</option>
                                                            <option>06</option>
                                                            <option>07</option>
                                                            <option>08</option>
                                                            <option>09</option>
                                                            <option>10</option>
                                                            <option>11</option>
                                                            <option>12</option>
                                                        </select>
                                                    </div>
                                                    <div class="form-group as_select_box">
                                                        <select class="form-control">
                                                            <option>Year</option>
                                                            <option>2018</option>
                                                            <option>2018</option>
                                                            <option>2019</option>
                                                            <option>2020</option>
                                                            <option>2022</option>
                                                            <option>2022</option>
                                                            <option>2023</option>
                                                            <option>2024</option>
                                                            <option>2025</option>
                                                            <option>2026</option>
                                                            <option>2027</option>
                                                            <option>2028</option>
                                                            <option>2029</option>
                                                            <option>2030</option>
                                                            <option>2031</option>
                                                            <option>2032</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button class="as_btn next" data-step="3">Pay</button>
                                </div>
                            </div>
                            <div class="woocommerce_checkout_receipt step text-center" data-target="3">
                                <h1 class="as_padderBottom10">THANK YOU FOR YOUR ORDER!</h1>
                                <p class="as_padderBottom20">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                                <a href="#" class="as_btn receipt_btn">Print Receipt</a>
                                <a href="#" class="as_btn receipt_btn">Email Receipt</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>