<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sample App</title>
    <style>
        body {
            text-align: center;
            margin: 0;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>

<body>
    <h1>Hello world!</h1>
    <p><?= gethostname() ?></p>
</body>

</html>