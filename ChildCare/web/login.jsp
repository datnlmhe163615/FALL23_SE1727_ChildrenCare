<!DOCTYPE html>
<html>
<head>
    <title>Simple Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        <div>
            <label for="username">Username or Email:</label>
            <input type="text" id="username" name="email" required>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <input type="submit" value="Login">
        </div>
    </form>
</body>
</html>
