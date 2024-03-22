<?php
  $db = new mysqli("localhost","root","admin","board"); //ip,id,pw,db
  
  $query = "select * from board where no = '".$_GET['no']."'";
  $res = $db->query($query);
  $view = $res->fetch_array();
  include("../header.php");
?>
<link rel="stylesheet" href="css/board.css">
<a class="btn btn_submit" href="list.php">홈으로</a>
<article id="bo_v">
    <header>
        <h2 class="bo_v_table"><span class="bo_v_tit"><?php echo $view['title']; ?></span></h2>
    </header>

    <section id="bo_v_info">
        <span>작성자 : <?php echo $view['name']; ?></span>
        <span>조회 : <?php echo number_format($view['hit']); ?></span>
        <strong class="if_date">작성일 : <?php echo date("Y.m.d H:i",strtotime($view['regdate'])); ?></strong>
    </section>

    <section id="bo_v_atc">
        <div id="bo_v_con"><?php echo nl2br($view['content']); ?></div>
    </section>
<?php
    $db->query("update board set hit = hit + 1 where no = '".$view['no']."'");
?>
    <div id="bo_v_top">
        <ul class="bo_v_com">
            <li><a href="list.php" class="btn btn_cancel">목록</a></li>
            <li><a href="form.php?no=<?php echo $view['no']; ?>&act=u" class="btn btn_submit">수정</a></li>
            <li><a href="update.php?no=<?php echo $view['no']; ?>&act=d" class="btn btn_submit" onclick="return confirm('정말 삭제 하시겠습니까?');">삭제</a></li>
            <li><a href="form.php" class="btn btn_submit">글쓰기</a></li>
        </ul>
    </div>
</article>

<?php
    $db2 = new mysqli("localhost","root","admin","board"); //ip,id,pw,db
    $query2 = "select * from comment where InNum = '".$_GET['no']."'";
    $res2 = $db2->query($query2);
    $form2 = $res2->fetch_array();
    $form2['name'] = '';
    $form2['content'] = '';
    $from2['InNum'] = $_GET['no'];
?>
<div>
    <form action="commentupdate.php" method="post">
        <input type="hidden" name="no" value="<?php echo $form2['no']; ?>">
        <input type="hidden" name="InNum"  value="<?php echo $_GET['no']; ?>">
        <input type="hidden" name="act"  value="insert">
        <div class="bo_w_info write_div">
            <input type="text" name="name" class="frm_input full_input" placeholder="글쓴이" required value="<?php echo $form2['name']; ?>">
            <textarea name="content" class="frm_area" placeholder="내용" required><?php echo $form2['content']; ?></textarea>
        </div>
        <div class="btn_confirm write_div">
            <a href="list.php" class="btn btn_cancel">취소</a>
            <input type="submit" class="btn btn_submit" value="입력">
        </div>
    </form>
</div>

<?php
include("comment.php");    
include("../footer.php");
?>