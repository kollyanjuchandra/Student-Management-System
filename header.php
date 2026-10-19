<?php if (!isset($page_title)) $page_title = 'Result Management System'; ?>
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title><?= e($page_title) ?></title><link rel="stylesheet" href="assets/style.css"></head><body>
<header><div class="nav"><a class="brand" href="index.php">RMS <span>Portal</span></a><nav>
<?php if (is_admin()): ?><a href="dashboard.php">Dashboard</a><a href="students.php">Students</a><a href="subjects.php">Subjects</a><a href="marks.php">Marks</a><a class="logout" href="logout.php">Logout</a>
<?php else: ?><a href="index.php">Home</a><a href="login.php">Admin Login</a><?php endif; ?>
</nav></div></header><main>
