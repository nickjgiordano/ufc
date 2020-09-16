<!DOCTYPE html>
<html>
	<head></head>
	<body>
		<?php
			require_once('connect.php');
		?>
		<div class="top">
			<div class="top_info">
				<div class="left">
					<?php echo date('l jS F Y');?>
				</div><div class="right">
					<form action="login.php" method="post" id="login" name="login">
						<?php
							session_start();
							if( isset( $_SESSION['user'] ) )
							{
								echo '<div style="display: inline-block; text-align: center; width: 260px;">logged in as <span style="font-weight: bold;">'.$_SESSION['user'] .
								'[USER CP]</span></div><input type="submit" name="login_btn" value="logout" class="login_btn" />';
							}
							else
							{
								echo '<input type="text" name="user" class="login" placeholder="username" />' .
								'<input type="password" name="pass" class="login" placeholder="password" />' .
								'<input type="submit" name="login_btn" value="login" class="login_btn" />';
							}
						?>
					</form>
				</div>
			</div>
		</div>
		<div class="logo"><a onclick="storePosition()" href="index.php"><img src="images/logo.png"></a></div>
		<?php
			// get list of tables and views to create arrays
			$result = mysqli_query($db, 'SHOW tables;');
			$tables = array();
			$tables_fk = array();
			while( $row = mysqli_fetch_row($result) )
			{
				$tablename = $row[0];
				if(substr($tablename, 0, 4) != 'view' && substr($tablename, 0, 4) != 'form' && substr($tablename, 0, 4) != 'list')
				{array_push( $tables, ucfirst($tablename) );}
				if(substr($tablename, 0, 4) == 'view' || substr($tablename, 0, 4) == 'form')
				{array_push( $tables_fk, ucfirst( substr($tablename, 4) ) );}
			}
			// create menu items containing table names
			echo '<div class="menu">';
			for($i = 0 ; $i < count($tables) ; $i++)
			{
				echo '<a onclick="storePosition()" href="index.php?table='.$tables[$i].'"><div class="menu_item';
				if (isset($_REQUEST['table']) && $_REQUEST['table'] == $tables[$i]) {echo '_selected';}
				$table_alias = str_replace( '_', ' ', $tables[$i] );
				echo '">'.$table_alias.'</div></a>';
			}
			echo '</div>';
		?>
		<div class="social">
			<a target="_blank" href="http://www.twitter.com"><img src="images/twitter.png"></a><br />
			<a target="_blank" href="http://www.instagram.com"><img src="images/instagram.png"></a><br />
			<a target="_blank" href="http://www.facebook.com"><img src="images/facebook.png"></a><br />
			<a target="_blank" href="http://www.youtube.com"><img src="images/youtube.png"></a><br />
			<a target="_blank" href="http://www.plus.google.com"><img src="images/googleplus.png"></a><br />
			<a target="_blank" href="http://www.linkedin.com"><img src="images/linkedin.png"></a><br />
		</div>
		<div class="footer">
			Copyright © 2018 -- District Fight -- All rights reserved
		</div>
	</body>
</html>