<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 Not Found</title>
    <link rel="stylesheet" href="./css/error.css">
</head>
<body>
    <div class="container">
        <h2 class="title">Oopss </h2>
        <p class="text">404 Page Not Found</p>
        <img src="./img/lost.png" alt="Lost Png" height="360px">
        <a href="index.jsp" class="btn">Take Me To Home Page</a>
        <h3>Error occured: <span>${pageContext.exception}</span> </h3>
    </div>
</body>
</html>