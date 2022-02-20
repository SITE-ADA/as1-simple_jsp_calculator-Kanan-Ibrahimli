<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Calculator</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-color: blueviolet;
        }
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
    margin-left: 10px;
}
a:hover{
    background-color: aquamarine;
    color: blueviolet;
}
h4{ 
    color: bisque;
    margin-left: 30px;
    font-size: 20px;
}
p{
    color: bisque;
   font-size: 20px;
 
}
    </style>
</head>
<body>
    <% String client = request.getHeader("user-Agent"); %>

    <h4> User agent :<p> <%=client%> </p> </h4>
   
    <br>
    <a href="./index.jsp" >Take Me To Home Page</a>
</body>
</html>