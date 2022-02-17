<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container-md">
  <div class="row">

    <div class="col">
      <h1 class="mt-4 text-center">Daftar Kelas Pasis</h1>
      <div class="table-responsive">
        <table class="table" id="myTable">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Kelas</th>
              <th scope="col">Jumlah</th>
              <th scope="col">Ketua</th>
              <th scope="col">Tgl Wisuda</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td colspan="2">Larry the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
      </div>

    </div>
  </div>

</div>

<?= $this->endSection(); ?>