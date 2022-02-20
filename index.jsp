<%@ page errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Calculator </title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Serif:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/style.css">
<style> 
a{
    text-decoration: none;
    background-color: blueviolet;
    color: rgb(108, 250, 14);
    margin-top:2rem;
    width: 200px;
    text-align: center;
    font-weight: bold;
    border: 3px solid rgb(108, 250, 14);
    border-radius: 8px;
    padding: 15px 18px;
}
a:hover{
    background-color: aquamarine;
    color: blueviolet;
}
</style>
</head>
<body>
    <%
   
    String n1 = request.getParameter("n1");
    String n2 = request.getParameter("n2");
    String op = request.getParameter("op");
    
    double number1 = Double.parseDouble(n1);
    double number2 = Double.parseDouble(n2);
    double res;
   

    if(op.equals("add")){
        op = "+";
        res=number1+number2;
    }
    else if(op.equals("sub")){
        op = "-";
        res = number1-number2;
    }
    else if(op.equals("mul")){
        op = "*";
        res= number1*number2;
    }
    else if (op.equals("div")){
        op = "/";
        if (number2==0){
            throw new Exception("Division by zero is impossible.");
        }
        else{
        res= number1/number2;
        }
    }
    else{
        throw new Exception("Operation code is invalid");
    }
    
    
    %>
     
     <form action="./index.jsp" method="get">
        <h2>Welcome to my Calculator</h2>
     <input type="text" name="n1" placeholder="Enter first number" >
     
     <br>
     <input type="text" name="n2" placeholder="Enter second number">

     <br>
     <input type="text" name="op" placeholder="Enter operation: add(+)/sub(-)/mul(*)/div(/)">

     <br>

      <button type="submit"> Calculate </button>
      <br>
      <input type="text" name="res" placeholder="result" value="<%out.println(res);%>">
       
      
     </form>

    <a href="./client-report.jsp" target="_blank">Client-Report</a> 

    
</body>
</html>