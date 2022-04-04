<html>
<style>body { text-align:center; padding: 200px 0; font-size:20px; } input { font-size:1em; width: 500px; height:50px; margin: 10px; }  button { width: 300px; height: 30px; }  </style>
<body>
<form method="post">
    <?php if ($_POST): ?>
    Welcome <?= $_POST['username'] ?><br />
    Your password is <?= $_POST['password'] ?><br />
    <?php endif; ?>
    <input name="username" type="text" value="pedro.testerson"/>
    <input name="password" type="password" />
    <button type="submit" name="action" value="submit">Submit</button>
    <button type="submit" name="action" value="cancel">Cancel</button>
</form>
</body>
</html>