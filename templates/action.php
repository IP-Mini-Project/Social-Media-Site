<?php
  require_once 'server.php';

  if (isset($_POST['query'])) {
    $inpText = $_POST['query'];
    $sql = "SELECT username FROM user WHERE username LIKE '%$inpText%'";
    $result = mysqli_query($db, $sql);

    if ($result->num_rows>0) {
      while ($row=$result->fetch_assoc()) {
        echo '<a href="#" class="list-group-item list-group-item-action">' . $row['username'] . '</a>';
      }
    } else {
      echo '<p class="list-group-item border-1">No Record</p>';
    }
  }
?>