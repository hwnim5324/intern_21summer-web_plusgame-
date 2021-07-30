<%-- 
    Document   : playgame
    Created on : 2021. 7. 29, 오전 10:07:36
    Author     : hwnim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" type="text/css" href="semantic/semantic.min.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="semantic/semantic.min.js"></script>

    <title>Plus Game</title>

    <style type="text/css">
        body>.grid {
            height: 100%;
        }
        
        .image {
            margin-top: -100px;
        }
        
        .column {
            max-width: 25%;
        }
    </style>
</head>

<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2>
                <div class="content">
                    <p class="logo">Plus Game</p>
                </div>
            </h2>
            <form class="ui large form">

                <div style=" margin-top: 20px; margin-bottom: 50px;">
                    <span style="font-size:1.2cm; margin-right: 0.4cm;"><%= %></span>
                    <div class="ui input">
                        <input type="text" style="height: 1.4cm; width: 3.5cm;" placeholder="답">
                    </div>
                </div>
                <a href="completegame.jsp">
                    <div class="ui blue button" style="width: 100%; margin-bottom: 20px;">
                        <p>다음 문제</p>
                    </div>
                </a>
            </form>
        </div>
    </div>




</body>

</html>