<?php
/* @var $exception \yii\web\HttpException|\Exception */
/* @var $handler \yii\web\ErrorHandler */
if ($exception instanceof \yii\web\HttpException) {
    $code = $exception->statusCode;
} else {
    $code = $exception->getCode();
}
$name = $handler->getExceptionName($exception);
if ($name === null) {
    $name = 'Error';
}
if ($code) {
    $name .= " (#$code)";
}

if ($exception instanceof \yii\base\UserException) {
    $message = $exception->getMessage();
} else {
    $message = 'Terdapat kesalahan pada server.';
}

$this->title = $handler->htmlEncode($name);
?>
<div class="alert alert-danger">
    <h3><?= nl2br($handler->htmlEncode($message)) ?></h3>
    <p>
        Kesalahan diatas terjadi ketika server melayani permintaan Anda.
    </p>
    <p>
        Mohon berkenan menghubungi kami jika server ini mengalami kesalahan/error/galat.
    </p>
</div>