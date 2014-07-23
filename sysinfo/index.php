<html>
<head>
<title>wat</title>
</head>
<body>
  <p>hello<br>
     this is caketop<br>
     <br>
     this machine is managed by alexander standke<br>
     direct concerns to astandke@westmont.edu</br>
  </p>
  <p>
<?php
exec('./sysinfo.sh', $output);
echo "     ";
echo implode("<br>\n     ", $output);
?>

  </p>
</body>
</html>
