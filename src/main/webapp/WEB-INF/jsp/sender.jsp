<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lab3</title>
    <style>
        body {
            display: flex;
            justify-content: center;
        }

        form {
            width: 500px;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<script type="text/javascript">
    function report() {
        alert(document.getElementById("senderMessage").value + " was sent.")
    }
</script>
<form name="sendMessageForm" method="post" action="sender">
    <br/><label for="senderMessage">Text to send</label>
    <input type="text" name="senderMessage" id="senderMessage"> <br/>
    <input type="submit" value="Send" onclick="report()">
</form>
</body>
</html>