<?php
    $db = new mysqli("localhost", "root", "admin", "board"); //ip,id,pw,db
    for($i=0;$i<count($_POST["check"]);$i++){
        $query = "delete from board where no = {$_POST["check"][$i]}";
        $res = $db->query($query);
        $query = "delete from comment where InNum = {$_POST["check"][$i]}";
        $res = $db->query($query);
    }
    echo "<script> location.href='list.php';</script>";
?>