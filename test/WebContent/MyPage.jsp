<%@page import="model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset.css">
    <style>
    	@font-face {
  			font-family: 'gdgd';
  			src: url(fonts/DungGeunMo.ttf) format('truetype');
		}
        body{
            width: 100%;
            height: 100vh;
            background: radial-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
            url(img/bg.jpg) no-repeat;
            background-color: black;
            background-position: center;
            background-size: 70%;
            overflow: hidden;
            font-family: 'gdgd' !important;
        }
        .header{
            width: 100%;
            height: 100px;
        }
        .header figure{
        	width: 426px;
        	height: 100%;
        }
        .header a{
        	height: 100%;
        }
        .header a img{
        	height: 100px;
       	}
        .main{
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .wrap{
            width: 20%;
            height: 55%;
            border: 1px solid #fff;
            position: relative;
            bottom: 5%;
            border-radius: 10px;
            background-color: rgba(30, 30, 30, 0.5);
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
        }
        .mypage{

            width: 70%;
            height: 50%;
            text-align: center;
        }
        .mypage span{
            font-size: 30px;
            color: #fff;
            margin-top: 10px;
            display: block;
            font-weight: bold;
        }
        .mypage ul{
            height: 20%;
            display: flex;
            color: #fff;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
            margin: 20px;
        }
        .mypage ul>li:first-child{
            font-size: 16px;
            color: #999;
        }
        .mypage ul>li:last-child{
            font-size: 22px;
            font-weight: bold;
        }
        .info{
            width: 70%;
            height: 30%;
            text-align: center;
            position: relative;
            top: -5%;
        }
        .info>span{
            font-size: 30px;
            color: #fff;
            margin-top: 10px;
            display: block;
            font-weight: bold;
        }
        .info>form{
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .info form span{
            display: block;
            margin: 20px 0;
            color: #fff;
            font-size: 16px;
        }
        .info form input:nth-of-type(1){
            width: 70%;
            height: 30px;
            border: none;
            background-color: rgba(30, 30, 30, 0.7);
            border-radius: 5px;
            color: #fff;
            padding-left: 20px;
            font-size: 18px;
            margin-bottom: 10px;
        }
        .info form input:nth-of-type(2){
            width: 100px;
            height: 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .info form input:nth-of-type(1)::placeholder{
            color: #999;
        }
        .info form input:nth-of-type(1):focus{
            background-color: rgba(50, 50, 50, 0.7);
        }
        .mypage_close {
  width: 50px;
  height: 50px;
  position: absolute;
  top: 20px;
  right: 20px;
  cursor: pointer;
}
.mypage_close:hover {
  background-color: rgba(100, 100, 100, 0.5);
  border-radius: 50%;
}
.mypage_close img {
  width: 80%;
  position: relative;
  top: 10%;
  left: 10%;
}


    </style>
</head>
<body>
	<%
		// ???? ?????? ???? ???? (vo == null => ????????????)
			UserVO vo = (UserVO)session.getAttribute("user");
	%>
    <header class="header">
        <figure>
            <a href="Main.jsp"><img src="img/logo3.png" alt=""></a>
        </figure>
    </header>

    <div class="main">
        <div class="wrap">
            <div class="mypage">
                <span>?? ????</span>
                <ul>
                    <li>????</li>
                    <li><%=vo.getUser_no() %></li>
                </ul>
                <ul>
                    <li>????</li>
                    <li>5000</li>

                </ul>
                <ul>
                    <li>??????????</li>
                    <li>21/11/01</li>
                </ul>
            </div>
            
            <div class="info">
                <span>???? ????</span>
                <form action="Update" method="post">
                    <span style="font-size: 30px"><%=vo.getUser_id() %></span>
                    <input type="password" name="pw" placeholder="?????? ????????">
                    <input type="submit" value="????">
                </form>
            </div>
            <a href="Main.jsp" class="mypage_close"><img src="img/xx.png" alt="#"></a>
        </div>
    </div>
</body>
</html>