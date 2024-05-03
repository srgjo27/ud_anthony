<x-error-component title="Error">
    <div class="content-box">
        <div class="big-content">
            <div class="list-square">
                <span class="square"></span>
                <span class="square"></span>
                <span class="square"></span>
            </div>
            <div class="list-line">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </div>
            <i class="fa fa-search" aria-hidden="true"></i>
            <div class="clear"></div>
        </div>
        <h1>Oops! Error {{ $errorCode }} tidak ditemukan.</h1>
        @if ($errorCode == 404)
            <p>Halaman yang Anda cari tidak ada. <br>Kami rasa halaman tersebut mungkin telah dipindahkan.</p>
        @elseif($errorCode == 403)
            <p>Anda tidak memiliki izin untuk mengakses halaman ini.</p>
        @else
            <p>Terjadi kesalahan.</p>
        @endif
    </div>
</x-error-component>
