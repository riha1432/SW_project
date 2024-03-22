<?php
$db = new mysqli("localhost", "root", "admin", "board"); //ip,id,pw,db
$query = "select * from board";
$query = "select * from board";
$res = $db->query($query);
$num = $res->num_rows;

$LIST_NUM = 5;
$PAGE_NUM = 5;
$page = isset($_GET["page"])? $_GET["page"] : 1;
$total_page = ceil($num / $LIST_NUM);
$now_block = ceil($page / $PAGE_NUM);
$s_pageNum = ($now_block - 1) * $PAGE_NUM + 1;
if($s_pageNum <= 0){
    $s_pageNum = 1;
};
$e_pageNum = $now_block * $PAGE_NUM;
if($e_pageNum > $total_page){
    $e_pageNum = $total_page;
};
include ("../header.php");
?>

<link rel="stylesheet" href="css/board.css">
<div class="list_top">
    <a href="form.php" class="btn btn01">글쓰기</a>
    <a id="del" class="btn btn_submit" name="del">글삭제</a>
</div>
<div class="tbl_head01 tbl_wrap">
    <table>
        <thead>
            <tr>
                <th>체크</th>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
                <th>조회</th>
            </tr>
        </thead>
        <form method="post" id="form" action="del.php"> 
            <tbody>
                <?php
                $start = ($page - 1) * $LIST_NUM;
                $query2 = "select * from board limit $start, $LIST_NUM;";
                $resw = $db->query($query2);
                while ($row = $resw->fetch_array()) {
                    ?>
                    <tr>
                        <td class="td_num"><input class="check" type="checkbox" name="check[]" value=<?php echo $row['no'] ?>></td>
                        <td class="td_num">
                            <?php echo $row['no']; ?>
                        </td>
                        <td class="td_subject">
                            <a href="view.php?no=<?php echo $row['no']; ?>">
                                <?php echo $row['title']; ?>
                            </a>
                        </td>
                        <td class="td_name">
                            <?php echo $row['name']; ?>
                        </td>
                        <td class="td_datetime">
                            <?php echo date("Y.m.d H:i", strtotime($row['regdate'])); ?>
                        </td>
                        <td class="td_hit">
                            <?php echo $row['hit']; ?>
                        </td>
                    </tr>
                    <?php
                }
                $count = $res->num_rows;
                if ($count == 0) {
                    echo "<tr><td colspan='5'>게시글이 없습니다.</td></tr>";
                }
                ?>
            </tbody>
        </form>
    </table>
    <p class="pager">
        <?php
        /* paging : 이전 페이지 */
        if($page <= 1){
        ?>
        <a href="list.php?page=1">이전</a>
        <?php } else{ ?>
        <a href="list.php?page=<?php echo ($page-1); ?>">이전</a>
        <?php };?>

        <?php
        /* pager : 페이지 번호 출력 */
        for($print_page = $s_pageNum; $print_page <= $e_pageNum; $print_page++){
        ?>
        <a href="list.php?page=<?php echo $print_page; ?>"><?php echo $print_page; ?></a>
        <?php };?>

        <?php
        /* paging : 다음 페이지 */
        if($page >= $total_page){
        ?>
        <a href="list.php?page=<?php echo $total_page; ?>">다음</a>
        <?php } else{ ?>
        <a href="list.php?page=<?php echo ($page+1); ?>">다음</a>
        <?php };?>
    </p>
</div>
<script>
    let del = document.getElementById('del');
    let form = document.getElementById('form');
    del.addEventListener('click', function () {
        if (confirm("제거하시겠습니까?")) {
            form.submit();
        }
    });
</script>
<?php
include ("../footer.php");
?>