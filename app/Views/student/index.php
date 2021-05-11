<?= $this->extend('layouts/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <!-- membuat fitur pencarian -->
    <div class="row">
        <div class="col-8">
            <h1>Daftar Mahasiswa yang tersedia</h1>
            <form action="" method="POST">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Masukkan keyword pencarian ..." name="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table mt-3">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>

                    <?php
                    $i = 1 + ($jmldata * ($currentPage - 1));
                    foreach ($student as $s) { ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $s['nama']; ?></td>
                            <td><?= $s['alamat']; ?></td>
                            <td><a href="" class="btn btn-success">Detail</a></td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
            <?= $pager->links('student', 'student_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>