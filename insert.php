<?php
include('functions.php');

// 入力チェック
if (
    !isset($_POST['task']) || $_POST['task'] == '' ||
    !isset($_POST['deadline']) || $_POST['deadline'] == ''
) {
    exit('ParamError');
}

//POSTデータ取得
$task = $_POST['task'];
$who = $_POST["who"];
$deadline = $_POST['deadline'];
$comment = $_POST['comment'];
$lid = $_POST["lid"];
$trash = 1;
//DB接続
$pdo = db_conn();

//データ登録SQL作成
$sql = 'INSERT INTO php02_table (id, task, deadline, comment, indate,send,recieve,trash)
VALUES(NULL, :a1, :a2, :a3, sysdate(),:a4,:a5,:a6)';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $task, PDO::PARAM_STR);
$stmt->bindValue(':a2', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$stmt->bindValue(':a4', $lid, PDO::PARAM_STR);
$stmt->bindValue(':a5', $who, PDO::PARAM_STR);
$stmt->bindValue(':a6', $trash, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if ($status == false) {
    errorMsg($stmt);
} else {
    //index.phpへリダイレクト
    header('Location: index.php');
}
