<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Task._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Questionnaire</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="icon" href="img/favicon.png" type="image/png" />

    <link rel="stylesheet" type="text/css" href="http://questionnaire.codingsips.com/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="http://questionnaire.codingsips.com/css/font-awesome.min.css" />
    <link href="css/style.css" rel="stylesheet" />

    <script type="text/javascript" src="http://questionnaire.codingsips.com/js/jquery.min.js"></script>
    <script type="text/javascript" src="http://questionnaire.codingsips.com/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>

    <!-- HTML5 shiv and Respond.js IE8 support for HTML5 elements and media queries -->
    <!--[if IE]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>
<body>
    <div class="page-wrapper">
        <div class="container">
            <div class="row header">
                <h1>Questionnaire</h1>
            </div>
            <asp:Label ID="Label1" runat="server"></asp:Label>

            <form method="POST" class="frm"  runat="server">
                <div class="row">
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="form-group">
                            <label for="txtId">ID</label>
                            <asp:TextBox ID="id" class="form-control" required="required" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="form-group">
                            <label for="txtName">Name</label>
                            <asp:TextBox ID="name" class="form-control" required="required" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="form-group">
                            <label for="txtContact">Contact</label>
                            <asp:TextBox ID="contact" class="form-control" required="required" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-xs-12 col-md-6 col-lg-3">
                        <div class="form-group">
                            <label for="txtSendto">Send to</label>
                            <asp:TextBox ID="sendto" value="alamnaryab@gmail.com" class="form-control" required="required" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-lg-12 q-wrapper">
                        <p class="question">
                            Q-1 Which layers perform error detection and recovery functions?
                        </p>

						<asp:RadioButtonList ID="answer0" runat="server" RepeatLayout="Flow" required="required">
							<asp:ListItem Value="Data Link layer">Data Link layer</asp:ListItem>
							<asp:ListItem Value="Transport layer">Transport layer</asp:ListItem>
							<asp:ListItem Value="Transport layer">Physical layer</asp:ListItem>
						</asp:RadioButtonList>

                    </div>
                    <div class="col-lg-12 q-wrapper">
                        <p class="question">
                            Q-2 Which transmission media has the highest transmission speed in a network?
                        </p>
						<asp:RadioButtonList ID="answer1" runat="server" RepeatLayout="Flow" required="required">
							<asp:ListItem Value="Coaxial cable">Coaxial cable</asp:ListItem>
							<asp:ListItem Value="Twisted pair cable">Twisted pair cable</asp:ListItem>
							<asp:ListItem Value="Optical fiber">Optical fiber</asp:ListItem>
							<asp:ListItem Value="Electrical cable">Electrical cable</asp:ListItem>
						</asp:RadioButtonList>
                        
                    </div>
                    <div class="col-lg-12 q-wrapper">
                        <p class="question">
                            Q-3 Questions on Transport Layer?
                        </p>
						
						<asp:RadioButtonList ID="answer2" runat="server" RepeatLayout="Flow" required="required">
							<asp:ListItem Value="TCP – 1">TCP – 1</asp:ListItem>
							<asp:ListItem Value="TCP – 2">TCP – 2</asp:ListItem>
							<asp:ListItem Value="UDP">UDP</asp:ListItem>
							<asp:ListItem Value="AH and ESP Protocols">AH and ESP Protocols</asp:ListItem>
						</asp:RadioButtonList>

                    </div>
                    <div class="col-lg-12 q-wrapper" data-copts='2'>
                        <p class="question">
                            Q-4 what are valid ISO layers?
                            <span class="small">(select any 2 options)</span>

                        </p>
						
						<asp:CheckBoxList ID="answer3" runat="server" RepeatLayout="Flow" required="required">
							<asp:ListItem Value="Network Layer">Network Layer</asp:ListItem>
							<asp:ListItem Value="Water Layer">Water Layer</asp:ListItem>
							<asp:ListItem Value="Surface Layer">Surface Layer</asp:ListItem>
							<asp:ListItem Value="Physcal Layer">Physcal Layer</asp:ListItem>
						</asp:CheckBoxList>

                    </div>
                    <div class="col-lg-12 q-wrapper" data-copts='2'>
                        <p class="question">
                            Q-5 Which editors can you use?
                            <span class="small">(select any 2 options)</span>

                        </p>
						
						<asp:CheckBoxList ID="answer4" runat="server" RepeatLayout="Flow" required="required">
							<asp:ListItem Value="Visual Studio Code">Visual Studio Code</asp:ListItem>
							<asp:ListItem Value="Netbeans">Netbeans</asp:ListItem>
							<asp:ListItem Value="Notepad++">Notepad++</asp:ListItem>
							<asp:ListItem Value="Notepad">Notepad</asp:ListItem>
						</asp:CheckBoxList>

                    </div>
                </div>
                <div>
                    
                    <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-success" />
                    <button type="reset" class="btn btn-warning">
                        <i class="fa fa-remove"></i> Reset</button>

                    

                </div>
            </form>

            <br>
            <br>
        </div>
    </div>

</body>
</html>