<?php
// Spécifie le chemin du fichier
$file = 'index.php';

// Vérifie si le fichier existe
if (file_exists($file)) {
    // Affiche le contenu du fichier avec coloration syntaxique
    highlight_file($file);
} else {
    echo "Le fichier $file n'existe pas.";
}
?>
