<?php
set_exception_handler(
    function(Throwable $e) {
        echo $e->getMessage();
    }
);
if ($_POST['password'] === 'BirthdayCake') {
    echo "Password is correct user:".$_POST['username'];
}
else {
    throw new \Exception("Invalid password");
}