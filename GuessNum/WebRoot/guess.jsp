<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>猜数字游戏</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body{
	   background: #55cc55;
	}
	#guess{
	background: pink;
	height: 30px;
	width: 80px;
	border: hidden;
	}
	#guessnum{
	height: 30px;
	width: 200px;
	}
	#result{
	color: red;
	font-size: 16px;
	}
	</style>

  </head>
  
  <body>
   <h1>猜数字小游戏</h1>
	说明：系统随机生成一个0-99的随机数，然后输入您要猜的数字，点击【猜一猜】即可；共有10次机会；
	<br />
	<br />
	<form action="guess.jsp" method="post" >
	<input type="text" id="guessnum" name="guessnum" />
	<input type="submit" id="guess" name="guess"  value="猜一猜" />
	</form>
	<div id="result">
	<%!int c=0; %>
	<% 
	Object obj=session.getAttribute("randomNum");
	int res=0;
	if(obj==null){
		Random rand=new Random();
		res=rand.nextInt(100);
	    session.setAttribute("randomNum",res);
	}else{
		res=Integer.parseInt(obj+"");
	}
	String guessnum=request.getParameter("guessnum");
	if(guessnum!=null && !"".equals(guessnum)){
		int num=Integer.parseInt(guessnum);
	   if(num>res){
	   		c++;
	   		out.println("数字猜大了");
	   }else if(num<res){
	   		c++;
	   		out.println("数字猜小了");
	   }else{	   
	   		out.println("恭喜你，猜对了，共用"+c+"次机会");
	   		c=0;
	   }
	   
	   if(c>10){
	   		out.println("对不起，10次机会全部用完");
	   }
	}else{
	   	out.println("请输入要猜的数字");
	}
	%>
	</div>
  </body>
</html>
