<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="kundli-birth.aspx.cs" Inherits="kundli_birth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_ai_astrologers_wrapper as_padderBottom80 as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-12 col-sm-12 col-xs-12 col-lg-offset-1">
                        <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">Kundli Birth Details</h1>
                        </div>
                        <div class="ast_pp_section">
                            <h5 class="as_orange as_subheading as_padderTop10 as_padderBottom10">1. Basic Astrological Details</h5>
                            <p class="as_font14"><asp:Literal ID="litBasicAstrologicalDetails" runat="server"></asp:Literal></p>
                            <h5 class="as_orange as_subheading as_padderTop10 as_padderBottom10">2. Planetary Positions</h5>
                            <p class="as_font14"><asp:Literal ID="litPlanetaryPositions" runat="server"></asp:Literal></p>
                            <h5 class="as_orange as_subheading as_padderTop10 as_padderBottom10">3. Horoscope Charts</h5>
                            <p class="as_font14">This is unable to show at present. Sample SVG is not available.</p>
                            <h5 class="as_orange as_subheading as_padderTop10 as_padderBottom10"></h5>
                            <p class="as_font14"></p>
                        </div>
                        <div class="col-lg-12 text-center">
                            <asp:LinkButton runat="server" ID="lnkGoToDownloadPdf" Text="Download PDF" CssClass="as_btn" OnClick="lnkGoToDownloadPdf_Click"></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        <div>
        </div>
        </section>
</asp:Content>