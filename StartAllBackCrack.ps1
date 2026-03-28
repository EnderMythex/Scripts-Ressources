$basePath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID"

$subKeys = Get-ChildItem -Path $basePath | Select-Object -ExpandProperty PSChildName

$lowercaseKeys = $subKeys | Where-Object { $_ -cmatch "[a-z]" }

foreach ($targetKey in $lowercaseKeys) {
    $targetPath = Join-Path $basePath $targetKey

    $values = Get-ItemProperty -Path $targetPath | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name

    if ($values.Count -gt 5) {
        Write-Output "🔴 Clé $targetPath contient $($values.Count) valeurs → suppression..."
        foreach ($val in $values) {
            Remove-ItemProperty -Path $targetPath -Name $val -Force
        }
        Write-Output "✅ Toutes les valeurs supprimées dans $targetPath"
    }
    else {
        $valueName = "NouvelleValeur_" + (Get-Random -Minimum 1000 -Maximum 9999)
        New-ItemProperty -Path $targetPath -Name $valueName -Value "Test" -PropertyType String -Force
        Write-Output "🟢 Nouvelle valeur $valueName ajoutée à $targetPath"
    }
}
