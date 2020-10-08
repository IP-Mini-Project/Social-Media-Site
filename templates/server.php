<?php 

session_start();

$username = "";
$email = "";


$errors = array();

$db = mysqli_connect('localhost' , 'root', '', 'social') or die("could not connect");
if (isset($_POST['reg_user'])) {
$username = mysqli_escape_string($db, $_POST['username']);
$name = mysqli_escape_string($db, $_POST['name']);
$email = mysqli_escape_string($db, $_POST['email']);
$phone = mysqli_escape_string($db, $_POST['phone']);
$gender = mysqli_escape_string($db, $_POST['gender']);
$password_1 = mysqli_escape_string($db, $_POST['password_1']);
$password_2 = mysqli_escape_string($db, $_POST['password_2']);


if (empty($username)) {
	array_push($errors, "Username is required");
}

if (empty($name)) {
	array_push($errors, "name is required");
}

if (empty($email)) {
	array_push($errors, "Email is required");
}


if (empty($phone)) {
	array_push($errors, "phone is required");
}

if (empty($gender)) {
	array_push($errors, "gender is required");
}

if (empty($password_1)) {
	array_push($errors, "password is required");
}

if (empty($password_2)) {
	array_push($errors, "password is required");
}


$user_check_query = "SELECT * FROM user WHERE username = '$username' or email = '$email' or phone = '$phone' LIMIT 1";

$results = mysqli_query($db, $user_check_query);
$user = mysqli_fetch_assoc($results);

if($user) {

	if($user['username'] === $username){array_push($errors, "Username is exists");}

	if($user['email'] === $email){array_push($errors, "Email exists");}

	if($user['phone'] === $phone){array_push($errors, "phone exists");}
}

if (count($errors) == 0) {
	$password = md5($password_1);
	$profilePic = "../profile-pics/pfp.png";
	$query = "INSERT INTO user (username,name,email,phone,gender,password,pfp) VALUES ('$username','$name','$email','$phone','$gender','$password','$profilePic')";

	mysqli_query($db,$query);
	$_SESSION['username'] = $username;
	$_SESSION['success'] = "YOU are now logged in";
	header('location: login.php');
} 
}
//login user

if (isset($_POST['login_user'])) {
	
	$username = mysqli_escape_string($db, $_POST['username']);

	$password_1 = mysqli_escape_string($db, $_POST['password_1']);

	if (empty($username)) {
	array_push($errors, "Username is required");
}

	if (empty($password_1)) {
		array_push($errors, "password is required");
	}



	if (count($errors) == 0) {
	$password = md5($password_1);
	
	$query = "SELECT * FROM user WHERE username = '$username' AND password = '$password' ";
	$results = mysqli_query($db, $query);	
	if (mysqli_num_rows($results)) {
		# code...
		$_SESSION['username'] = $username;
		$_SESSION['success'] = "YOU are now logged in";
		header('location: index.php');
	} else {
		array_push($errors, "wrong combination of username/password.Please try again.");
	}

}


}
?>































<!-- 
// if (count($errors) == 0) {
// 	if (!empty($password_1)) {

// 		if (mysqli_connect_error()) {
// 			die("connect error ('.mysqli_connect_error().')" .mysqli_connect_error());
// 			# code...
// 		} else {
// 			$sql = "INSERT INTO user (username , email, password) VALUES ('$username','$email','$password_1')";
// 			if ($db -> query($sql)) {
// 				echo "new record";
// 			} else {
// 				echo "error  :".$sql . "<br>" .$db ->error;
				
// 			}

// 			$db -> close();
// 		}
// 	}
// }
		# code...
// 	} else {
// 		echo "Password cant be empty";
// 		die();
// 	}
// 	# code...
// } else {
// 	echo "User cant be emtpy";
// 	die();
// } -->













