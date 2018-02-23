While ($true) {
    $userInput = Read-Host "Quel est votre numéro de département ?"
    $csv = Get-Content -Path "C:\Users\Aston\Desktop\Powershell\departement.csv" 
    $i = 0;
    foreach ( $data in  $csv ) {
        $d = $data.Split(",")
        $id = $d[1].replace('"','')
        $departement = $d[2].replace('"','')
        if ($id  -eq $userInput) {
            echo "`n+---------------------------------------------+"
            echo "| Votre département est : $departement "
            echo "+---------------------------------------------+`n"
            $i++;
        }
    }
    if ($i -eq 0) {
        echo "Le numéro de département n'est pas reconnu."
    }
}
 