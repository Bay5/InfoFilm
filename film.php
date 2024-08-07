<?php
include 'koneksi.php';

$sql = "SELECT id, title, year, rating, genre, length, synopsis, poster, trailer FROM films";
$result = $conn->query($sql);

$movies = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $movies[] = $row;
    }
}

if(isset($_GET['id'])) {
    // Ambil ID film dari parameter URL
    $id = $_GET['id'];

    // Query untuk mengambil informasi film berdasarkan ID
    $sql = "SELECT * FROM films WHERE id = $id";
    $result = $conn->query($sql);

    // Periksa jika hasil query ada
    if ($result->num_rows > 0) {
        // Ambil baris pertama (seharusnya hanya satu)
        $row = $result->fetch_assoc();
        // Ambil nama film dan URL trailer dari hasil query
        $title = $row['title'];
        $year = $row['year'];
        $rating = $row['rating'];
        $genre = $row['genre'];
        $length = $row['length'];
        $synopsis = $row['synopsis'];
        $poster = $row['poster'];
        $trailer = $row['trailer'];
    } else {
        // Jika film tidak ditemukan, atur variabel untuk menampilkan pesan kesalahan
        $title = 'Film tidak ditemukan';
        $trailer = '';
    }
} else {
    // Jika parameter ID film tidak diberikan, atur variabel untuk menampilkan pesan kesalahan
    $title = 'Parameter ID film tidak diberikan';
    $trailer = '';
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($title); ?></title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    <style>
        .custom_blue {
            background-color: #0092CA;
        }
        .custom_dark {
            background-color: #323643;
        }
        .custom_blue .navbar-brand, .custom_blue .navbar-nav .nav-link {
            color: #fff;
        }
        h1, p {
            color: white;
        }
    </style>
</head>

<body class="custom_dark">
    <nav class="navbar navbar-expand-lg custom_blue pl-2">
        <a class="navbar-brand ps-5 font-weight-bold fs-2" href="index.php"><strong>InfoFilm</strong></a>
    </nav>
    
    <div class="container mt-5">
        <?php if (isset($_GET['id']) && !empty($title)): ?>
            <div class="row">
                <div class="col-md-4">
                    <img src="<?php echo htmlspecialchars($poster); ?>" class="img-fluid rounded" alt="<?php echo htmlspecialchars($title); ?>">
                </div>
                <div class="col-md-8">
                    <h1><?php echo htmlspecialchars($title); ?></h1>
                    <p><strong>Release Date:</strong> <?php echo htmlspecialchars($year); ?></p>
                    <p><strong>Rating:</strong> <?php echo htmlspecialchars($rating); ?></p>
                    <p><strong>Genre:</strong> <?php echo htmlspecialchars($genre); ?></p>
                    <p><strong>Length:</strong> <?php echo htmlspecialchars($length); ?> minutes</p>
                    <p><?php echo htmlspecialchars($synopsis); ?></p>

                </div>
            </div>
            <div class="ratio ratio-16x9 my-4">
                <?php if ($trailer): ?>
                    <iframe src="<?php echo htmlspecialchars($trailer); ?>" allowfullscreen></iframe>
                <?php endif; ?>
            </div>
        <?php else: ?>
            <div class="alert alert-warning" role="alert">
                <?php echo htmlspecialchars($title); ?>
            </div>
        <?php endif; ?>
    </div>
</body>
</html>
