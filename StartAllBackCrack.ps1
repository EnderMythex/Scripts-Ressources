# Définir le chemin de base
$basePath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID"

# Récupérer toutes les sous-clés
$subKeys = Get-ChildItem -Path $basePath | Select-Object -ExpandProperty PSChildName

# Filtrer uniquement celles qui contiennent des lettres minuscules
$lowercaseKeys = $subKeys | Where-Object { $_ -cmatch "[a-z]" }

foreach ($targetKey in $lowercaseKeys) {
    # Construire le chemin complet
    $targetPath = Join-Path $basePath $targetKey

    # Récupérer toutes les valeurs présentes dans cette clé
    $values = Get-ItemProperty -Path $targetPath | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name

    if ($values.Count -gt 5) {
        Write-Output "🔴 Clé $targetPath contient $($values.Count) valeurs → suppression..."
        foreach ($val in $values) {
            Remove-ItemProperty -Path $targetPath -Name $val -Force
        }
        Write-Output "✅ Toutes les valeurs supprimées dans $targetPath"
    }
    else {
        # Ajouter une nouvelle valeur
        $valueName = "NouvelleValeur_" + (Get-Random -Minimum 1000 -Maximum 9999)
        New-ItemProperty -Path $targetPath -Name $valueName -Value "Test" -PropertyType String -Force
        Write-Output "🟢 Nouvelle valeur $valueName ajoutée à $targetPath"
    }
}