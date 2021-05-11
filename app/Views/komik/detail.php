<?= $this->extend('layouts/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <h1 class="mt-2">Judul Komik</h1>
    <div class="row">
        <div class="col">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-3">
                        <img src="/img/<?= $komik['sampul']; ?>" class="sampul1" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $komik['judul'] ?></h5>
                            <p class="card-text"><b>Penulis : </b><?= $komik['penulis'] ?></p>
                            <p class="card-text"><b>Penerbit : </b><small class="text-muted"><?= $komik['penerbit']; ?></phpp></small></p>
                            <a href="/komik/edit/<?= $komik['slug']; ?>" class="btn btn-warning">Edit</a>

                            <!-- Metodh spoofing -->
                            <form class="d-inline" action="/komik/<?= $komik['id']; ?>" method="POST">
                                <!-- agar lebih aman pake csrf -->
                                <?= csrf_field(); ?>
                                <!-- ini membuat input http method spoofingnya -->
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger" onclick="return confirm('Apakah anda yakin ingin menghapus ? ');">Delete</button>
                            </form>
                        </div>
                        <a href="/komik/" class="ml-4">Kembali ke daftar komik</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endsection(); ?>