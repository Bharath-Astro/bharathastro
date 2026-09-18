<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="panchang-hora-muhurata.aspx.cs" Inherits="panchang_hora_muhurata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
/* Bottom Cards */
.as_panchang_bottom_cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
}
.as_panchang_bottom_card {
    border-radius: 10px;
    text-align: center;
    padding: 45px 20px;
    background: linear-gradient(135deg, var(--secondary-color), #e040a0);
    transition: all 0.3s linear;
    display: block;
    text-decoration: none !important;
    cursor: pointer;
    transform: translateY(0);
}
.as_panchang_bottom_card1 {
    border-radius: 10px;
    text-align: center;
    padding: 45px 20px;
    background: linear-gradient(135deg, var(--secondary-color), #e040a0);
    transition: all 0.3s linear;
    display: block;
    text-decoration: none !important;
    cursor: pointer;
    transform: translateY(0);
}
.as_panchang_bottom_card:hover {
    background: linear-gradient(135deg, #e040a0, var(--secondary-color));
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgb(255 112 16 / 20%);
}
.as_panchang_bottom_card h2 {
    font-size: 22px;
    color: var(--white-color);
    margin: 0;
    text-transform: capitalize;
    line-height: 1.4;
}
/* ========================================
   HORA MUHURTA PAGE - Additional CSS
   ======================================== */

/* Hora Title Section */
.as_hora_title_section {
    padding: 50px 0 0;
}
.as_hora_title_section h2 {
    font-size: 30px;
    margin: 0 0 5px;
}
.as_hora_title_section .as_hora_location {
    font-size: 16px;
    color: var(--secondary-color);
    margin: 0 0 25px;
}
.as_hora_title_section p {
    font-size: 15px;
    line-height: 28px;
    color: #97b0c1;
    max-width: 800px;
}

/* Hora Grid */
.as_hora_grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 25px;
    margin-top: 40px;
}

/* Hora Card */
.as_hora_card {
    border-radius: 10px;
    overflow: hidden;
    border: 1px solid rgb(255 255 255 / 10%);
}
.as_hora_card_header {
    background-color: var(--dark-color2);
    padding: 16px 20px;
    text-align: center;
    font-size: 20px;
    color: var(--primary-color);
    border-bottom: 2px solid var(--secondary-color);
}
.as_hora_card_body {
    background-color: #07273c;
}

/* Hora Row */
.as_hora_row {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    padding: 14px 20px;
    border-bottom: 1px solid rgb(255 255 255 / 5%);
    transition: all 0.2s linear;
}
.as_hora_row:last-child {
    border-bottom: none;
}
.as_hora_row:hover {
    background-color: rgb(255 255 255 / 3%);
}
.as_hora_row .as_hr_planet {
    font-size: 16px;
    font-weight: 600;
    color: var(--white-color);
    min-width: 90px;
    text-align: right;
}
.as_hora_row .as_hr_time {
    font-size: 15px;
    color: #97b0c1;
    font-family: 'Courier New', monospace;
    letter-spacing: 0.5px;
    min-width: 120px;
    text-align: left;
}

/* Planet Color Indicators */
.as_hora_row.planet-sun .as_hr_planet { color: #ffb800; }
.as_hora_row.planet-moon .as_hr_planet { color: #b8c4d0; }
.as_hora_row.planet-mars .as_hr_planet { color: #ef4444; }
.as_hora_row.planet-mercury .as_hr_planet { color: #22d3ee; }
.as_hora_row.planet-jupiter .as_hr_planet { color: #f59e0b; }
.as_hora_row.planet-venus .as_hr_planet { color: #f472b6; }
.as_hora_row.planet-saturn .as_hr_planet { color: #8b5cf6; }

/* Responsive */
@media (max-width:991px) {
    .as_hora_grid {
        grid-template-columns: 1fr;
    }
    .as_hora_title_section h2 {
        font-size: 26px;
    }
}
@media (max-width:767px) {
    .as_hora_title_section h2 {
        font-size: 22px;
    }
    .as_hora_title_section p {
        font-size: 14px;
        line-height: 26px;
    }
    .as_hora_row {
        gap: 12px;
        padding: 12px 15px;
    }
    .as_hora_row .as_hr_planet {
        font-size: 14px;
        min-width: 75px;
    }
    .as_hora_row .as_hr_time {
        font-size: 13px;
        min-width: 100px;
    }
    .as_hora_card_header {
        font-size: 18px;
        padding: 14px 15px;
    }
}
@media (max-width:400px) {
    .as_hora_row {
        flex-direction: column;
        gap: 2px;
        text-align: center;
    }
    .as_hora_row .as_hr_planet {
        text-align: center;
        min-width: auto;
    }
    .as_hora_row .as_hr_time {
        text-align: center;
        min-width: auto;
    }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- ========================================
     MAIN CONTENT
     ======================================== -->
<div class="container">
    <div class="as_hora_title_section">
        <h2>Hora For <%= DisplayDate %></h2>
        <p class="as_hora_location"><%= DisplayCity %></p>
        <p>Timings use Drik calculations and Lahiri Ayanamsha for the selected date and place.</p>
        <p role="status"><%= Status %></p>
    </div>

    <!-- Hora Grid -->
    <div class="as_hora_grid">

        <!-- Day Hora -->
        <div class="as_hora_card">
            <div class="as_hora_card_header">
                <h2>Day Hora</h2>
            </div>
            <div class="as_hora_card_body"><asp:Repeater ID="DayTimings" runat="server"><ItemTemplate>
                    <div class='as_hora_row <%#: Eval("CssClass") %>'>
                        <span class="as_hr_planet"><%#: Eval("Name") %></span>
                        <span class="as_hr_time"><%#: Eval("Time") %></span>
                    </div>
                </ItemTemplate></asp:Repeater>
            </div>
        </div>

        <!-- Night Hora -->
        <div class="as_hora_card">
            <div class="as_hora_card_header">
                <h2>Night Hora</h2>
            </div>
            <div class="as_hora_card_body"><asp:Repeater ID="NightTimings" runat="server"><ItemTemplate>
                    <div class='as_hora_row <%#: Eval("CssClass") %>'>
                        <span class="as_hr_planet"><%#: Eval("Name") %></span>
                        <span class="as_hr_time"><%#: Eval("Time") %></span>
                    </div>
                </ItemTemplate></asp:Repeater>
            </div>
        </div>

    </div>

        <!-- Bottom Cards -->
        <div class="as_panchang_bottom_cards">
            <a href='<%= Link("panchang-chaughadiya-muhurata.aspx") %>' class="as_panchang_bottom_card" style="background: linear-gradient(135deg, #e040a0, var(--secondary-color));">
                <h2>Chaughadiya<br>Muhurata</h2>
            </a>
            <a href='<%= Link("panchang-hora-muhurata.aspx") %>' class="as_panchang_bottom_card1">
                <h2>Hora<br>Muhurata</h2>
            </a>
            <a href='<%= Link("panchang-daily.aspx") %>' class="as_panchang_bottom_card" style="background: linear-gradient(135deg, #e040a0, var(--secondary-color));">
                <h2>Daily<br>Panchang</h2>
            </a>
        </div>

</div>
</asp:Content>

