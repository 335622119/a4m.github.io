<?php header("Content-type:text/html;charset=utf-8"); ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=6;">
<style>
body{background:grey}
</style>
</head>
<body>
<input name="xss" value="<?php echo htmlspecialchars($_GET['xss']) ?>"> </body>
</html>
