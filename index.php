<?php
include 'koneksi.php';

$sql = "SELECT id, title, year, rating, poster FROM films";
$result = $conn->query($sql);

$movies = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $movies[] = $row;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoFilm</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <script src='assets/bootstrap/js/bootstrap.min.js'></script>
    <style>
        .custom_blue {
            background-color: #0092CA;
        }
    </style>
</head>

<body class="bg-dark">
    <nav class="navbar navbar-expand-lg custom_blue pl-2">
        <a class="navbar-brand ps-5 font-weight-bold fs-2 text-white" href="#"><strong>InfoFilm</strong></a>
    </nav>

    <div class="container my-5">
        <h1 class="mb-4 text-white">Movies</h1>
        <div class="row">
            <?php foreach ($movies as $movie): ?>
                <div class="col-md-3 col-sm-6 mb-4">
                    <div class="card border-0">
                        <a href="film.php?id=<?php echo htmlspecialchars($movie['id']); ?>">
                            <img src="<?php echo htmlspecialchars($movie['poster']); ?>" class="card-img-top" alt="<?php echo htmlspecialchars($movie['title']); ?>">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="film.php?id=<?php echo htmlspecialchars($movie['id']); ?>" class="text-reset text-decoration-none">
                                    <?php echo htmlspecialchars($movie['title']); ?> (<?php echo htmlspecialchars($movie['year']); ?>)
                                </a>
                            </h5>
                            <p class="card-text"><?php echo htmlspecialchars($movie['rating']); ?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

</body>
</html>