<?php
set_exception_handler(
    function(Throwable $e) {
        echo $e->getMessage();
    }
);

# 53b6db49372383e6fb48873bc741a5d6e43f80a0
if (sha1($_POST['password']) === '53b6db49372383e6fb48873bc741a5d6e43f80a0') {
    echo "Password is correct user:".$_POST['username'];
}
else {
    throw new \Exception("Invalid password");
}