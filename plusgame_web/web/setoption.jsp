<%-- 
    Document   : setoption
    Created on : 2021. 7. 29, 오전 10:45:04
    Author     : hwnim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="plusgame.optionDAO" %>
<%@page import="plusgame.option" %>
<%@page import="java.io.PrintWriter" %>
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
    
    <%
            String userId=null;
            if(session.getAttribute("userId")!=null){
                userId=(String)session.getAttribute("userId");
            }
            else{
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("location.href='login.jsp'");
                script.println("</script>");
            }

            optionDAO optiondao = new optionDAO();
            if(optiondao.getoption(userId)==null){
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('유효하지 않은 접근입니다.')");
                script.println("history.back()");
                script.println("</script>");
            }else{
                option user = optiondao.getoption(userId);
            }
        %>
    
    <div class="ui middle aligned center aligned grid">
        <div class="column">
            <h2>
                <div class="content">
                    <p class="logo">Plus Game</p>
                </div>
            </h2>
            <form class="ui large form" >

                <div>
                    <span style="font-size:0.8cm; margin-right: 4.5cm;">문항수</span>
                    <div class="ui input">
                        <input type="text" style="height: 1.2cm; width: 3.5cm; margin-top: 20px; margin-bottom: 50px;" name="numofquest" placeholder="입력">
                    </div>
                </div>
                <div>
                    <span style="font-size:0.8cm; margin-right: 2cm;">난이도</span>
                    <div class="ui buttons">
                        <div class="ui inverted blue button" style="height: 1.2cm; width: 2cm; margin-top: 20px; margin-bottom: 50px;">상</div>
                        <div class="ui inverted blue button" style="height: 1.2cm; width: 2cm; margin-top: 20px; margin-bottom: 50px;">중</div>
                        <div class="ui inverted blue button" style="height: 1.2cm; width: 2cm; margin-top: 20px; margin-bottom: 50px;">하</div>
                    </div>
                </div>
                    <input type="submit" class="blue ui button" style="width: 100%;" value="저장">
            </form>
        </div>
    </div>



</body>

</html>