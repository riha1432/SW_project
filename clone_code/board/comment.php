<?php
    $db2 = new mysqli("localhost","root","admin","board"); //ip,id,pw,db
    $query2 = "select * from comment where InNum = '".$_GET['no']."'";
    $res2 = $db2->query($query2);
    while($row = $res2->fetch_array()){
?>
    <div>
        <section id="bo_v_info">
            <form method="post" action="commentupdate.php">
                <input type="hidden" name="pageno" value="<?php echo $_GET['no'];?>">
                <input type="hidden" name="no" value="<?php echo $row['no'];?>">
                <table>
                    <tbody width="100%">
                        <tr>
                            <td width="10%"><span>작성자 : <?php echo $row['name']; ?></span></td>
                            <td width="10%"><spne>댓글 : </span></td>
                            <td width="70%">
                                <input type="text" name="content" class="frm_input full_input" value="<?php echo $row['content'];?>" >
                            </td>
                            <td width="10%">
                                <input type="submit" class="btn btn_submit" name="act" value="수정"></a>
                                <input type="submit" class="btn btn_submit" name="act" value="삭제"></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form> 
        </section>
    </div>
<?php
    }
?>