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
            display: flex;
            flex-direction: column;
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

        input[type="button"] {
            width: 100px;
            margin-top: 10px;
            background-color: #16e069;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #00a435;
        }
    </style>
    <script type="text/javascript">
        function receiveMessage() {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "/consumer/next", true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        var message = xhr.responseText;
                        if (message) {
                            document.getElementById('receivedMessages').value = message;
                        } else {
                            alert("No more messages in queue!");
                        }
                    } else {
                        alert("Error fetching message: " + xhr.status);
                    }
                }
            };
            xhr.send();
        }
    </script>
</head>
<body>
<form name="receiveMessageForm" method="get" action="receiveMessServlet">
    <label for="receivedMessages">Received message</label>
    <textarea rows="10" cols="50" id="receivedMessages"></textarea>
    <input type="button" value="Receive" onclick="receiveMessage()">
</form>
</body>
</html>