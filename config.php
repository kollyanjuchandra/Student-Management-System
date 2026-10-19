<?php
session_start();
$conn = new mysqli('localhost', 'root', '', 'result_management');
if ($conn->connect_error) { die('Database connection failed: ' . $conn->connect_error); }
$conn->set_charset('utf8mb4');

function e($value) { return htmlspecialchars((string)$value, ENT_QUOTES, 'UTF-8'); }
function is_admin() { return isset($_SESSION['admin_id']); }
function require_admin() { if (!is_admin()) { header('Location: login.php'); exit; } }
function grade($percentage) {
    if ($percentage >= 90) return 'A+';
    if ($percentage >= 80) return 'A';
    if ($percentage >= 70) return 'B+';
    if ($percentage >= 60) return 'B';
    if ($percentage >= 50) return 'C';
    if ($percentage >= 35) return 'D';
    return 'F';
}
?>
