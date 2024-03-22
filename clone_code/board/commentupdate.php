<?php
    $db = new mysqli("localhost", "root", "admin", "board"); //ip,id,pw,db

    if($_POST['act'] == '수정' && $_POST['no'] ){
        $query = "update comment
                    set  content = '{$_POST['content']}'
                    where no = '{$_POST['no']}'";
        $res = $db->query($query);
        
        if ($res) {
            echo "<script>alert('댓글수정 완료.');location.href='view.php?no={$_POST['pageno']}';</script>";
        }else{
            echo "<script>alert('댓글수정 실패.');location.href='view.php?no={$_POST['pageno']}';</script>";
        }
    }

    else if($_POST['act'] == '삭제' && $_POST['no']){

        $query = "delete from comment where no = '".$_POST['no']."'";
        $res = $db->query($query);
        
        if ($res) {
            echo "<script>alert('댓글삭제 완료.');location.href='view.php?no={$_POST['pageno']}';</script>";
        }else{
            echo "<script>alert('댓글삭제 실패.');location.href='view.php?no={$_POST['pageno']}';</script>";
        }

    }

    else{
        $query = "insert comment 
                    set name = '" . $_POST['name'] . "', 
                        content = '{$_POST['content']}',
                        InNum = {$_POST['InNum']}";
        $res = $db->query($query);
        // echo $_POST['name'], $_POST['content'], $_POST['InNum'];
        
        if ($res) {
            echo "<script>alert('댓글 완료.');location.href='view.php?no={$_POST['InNum']}';</script>";
        }else{
            echo "<script>alert('댓글 실패.');location.href='view.php?no={$_POST['InNum']}';</script>";
        }
    }
    
?>