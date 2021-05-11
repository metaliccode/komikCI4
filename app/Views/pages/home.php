<?= $this->extend('layouts/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>Selamat datang di halaman home</h1>
            <?= d($nama) ?>
        </div>
    </div>
</div>
<?= $this->endSection('content'); ?>