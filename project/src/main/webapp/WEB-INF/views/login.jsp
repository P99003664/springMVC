<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body bgcolor="white">
    <h1>Login Form:</h1>
  <div class="card">
   <div class="card-body">
        <form method="post" action="checkuser">
            <center>
            <table border="2" width="50%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Page</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Enter UserName</td>
                        <td><input type="text" name="employeeid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Enter Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" class = 'btn btn-primary'/></td>
                        <td><a href = "index">Cancel</td>
                    </tr>
                    <tr>
                        <td colspan="2">New User &nbsp;&nbsp;&nbsp;<a href="registration">SignUp</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </div>
        </div>
    </body>
</html>