<?php

	// start session to store session variables
	session_start();
	
	// connect to database. if it doesnt work, error message appears
	$db = mysqli_connect('localhost', 'root', '', 'ufc') or die('Database connection failed!');
	
	// if user pressed logout button, then unset login session variable
	if($_REQUEST['login_btn'] == "logout")
	{
		session_destroy();
	}
	// otherwise, set login session variable to match username
	else
	{
		// get email entered by looking at address bar
		$user = $_REQUEST['user'];
		
		// get password entered by looking at address bar
		$pass = $_REQUEST['pass'];
		
		// ************************************
		// USE THIS LATER FOR HASHING PASSWORDS - registration system doesn't exist yet
		// ************************************
		// $hash = password_hash($_REQUEST['pass'], PASSWORD_DEFAULT);
		// mysqli_query($db, "UPDATE Account SET Password = '$hash' WHERE Username = '$user';") or die("Query failed!");
		// ************************************
		
		// get the correct password for the selected user from the database
		$result = mysqli_query($db, "SELECT Password FROM Account WHERE Username = '$user';") or die("Query failed!");
		$account = mysqli_fetch_assoc($result);
		
		// if password matches, set login session variable to match username
		if( password_verify($pass, $account['Password'] ) )
		{
			$_SESSION['user'] = $user;
		}
		else
		{
			session_destroy();
		}
	}
	// redirect user back to login page
	header('Location: index.php');
?>