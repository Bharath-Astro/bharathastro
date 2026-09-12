<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book-now.aspx.cs" Inherits="book_now" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bharat Astrology</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />


    <!-- stylesheet -->
    
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/plugin/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="assets/js/plugin/airdatepicker/datepicker.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/fonts.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
    <!-- favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon" />
    <style type="text/css">
        .width-logo{width:124px; margin:0px; padding:0px 10px;}
        .logo-size{width:148px; padding:0px; margin:0px; margin-left:30px;}
        .bg-form{background-color:#EEEEEE;}

h1:hover{color:#FF7010;}
h2:hover{color:#FF7010;}
h3:hover{color:#FF7010;}


/* Calendar container */
.calendar {
    border: 1px solid #ddd;
    border-radius: 8px;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    font-size: 14px;
    width: 100%;
    max-width: 350px;
    margin: 20px auto;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

/* Header (month + navigation) */
.calendar th {
    background-color: #4CAF50;
    color: white;
    padding: 8px;
    text-align: center;
    font-weight: bold;
}

/* Day names row */
.calendar .DayHeader {
    background-color: #f2f2f2;
    color: #333;
    font-weight: bold;
    padding: 6px;
    text-align: center;
}

/* Normal days */
.calendar td {
    text-align: center;
    padding: 10px;
    cursor: pointer;
    transition: background 0.3s ease;
}

/* Hover effect */
.calendar td:hover {
    background-color: #e6ffe6;
    border-radius: 50%;
}

/* Today’s date */
.calendar .Today {
    background-color: #ffeb3b;
    border-radius: 50%;
    font-weight: bold;
}

/* Selected date */
.calendar .SelectedDay {
    background-color: #4CAF50;
    color: white;
    border-radius: 50%;
    font-weight: bold;
}

/* Weekend styling */
.calendar .Weekend {
    background-color: #fafafa;
    color: #999;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="as_loader">
        <img src="assets/images/loader.png" alt="" class="img-responsive" />
    </div>
    <div class="as_main_wrapper">

<%--        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Appointment</h1> 

                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>Appointment</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>--%>
        <section class="as_appointment_wrapper12 as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="as_journal_box_wrapper">
                            <div>
                                <%--<h3 class="text-center as_subheading">Appointment Form</h3>--%>
                                <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="row">
    <div class="col-12">
                                    <h2 class="as_orange">Comprehensive Life Reading</h2>
        <h5>Consultation Description:</h5>
                                    <div>


Meet with me 1-on-1 for a 60-minute private astrology reading over Zoom — and leave with clarity, direction, and practical remedies based on your birth chart.

You’ll receive clear insights into your major life questions, planetary cycles, and spiritual timing.

Please click below to select a time for your session.


                                    </div>
    </div>

</div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <h4>Select a Date & Time</h4>
                                    
                                    <div>
<asp:Calendar ID="Calendar1" runat="server" 
    OnSelectionChanged="Calendar1_SelectionChanged"
    BackColor="White" 
    BorderColor="Black" 
    DayNameFormat="Full"
    Font-Names="Verdana" 
    Font-Size="10pt" 
    ForeColor="Black" 
    NextPrevFormat="FullMonth"
    CssClass="calendar"
    >
</asp:Calendar>

<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                       
                                    </div>
                                </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="as_copyright_wrapper text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; 2025 Bharat Astrology. All Right Reserved.</p>
                    </div>
                </div>
            </div>
        </section> 
    </div>
    



    <!-- javascript -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/plugin/slick/slick.min.js"></script>
    <script type="text/javascript" src="assets/js/plugin/countto/jquery.countTo.js"></script>
    <script type="text/javascript" src="assets/js/plugin/airdatepicker/datepicker.min.js"></script>
    <script type="text/javascript" src="assets/js/plugin/airdatepicker/i18n/datepicker.en.js"></script>
    <script type="text/javascript" src="assets/js/plugin/select2/select2.min.js"></script>
    <script src="assets/js/custom.js"></script>  
    </form>
</body>
</html>
