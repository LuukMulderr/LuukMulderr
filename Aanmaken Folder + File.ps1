#Om deze script te laten werken moet je eerst een Folder aanmaken genaamd "Scripts"


$folderpath = "C:\Scripts"
$filepath = "C:\Scripts\$Foldername"
$Foldername = "Luukfolder"
$Filename = "Luuk.txt"
$FolderNametest = "C:\Scripts\$Foldername"
$Filenametest = "C:\Scripts\$Foldername\$Filename"
 


#Kijkt of er al een folder in de map "Scripts" zit Anders wordt het aangemaakt

if (Test-path $FolderNametest ) {
"De folder bestaat al"
 } else { Write-host "Aanmaken Folder"
New-item -name "$Foldername" -path $folderpath -ItemType Directory 
Write-host "De Folder is aangemaakt"
 }

 #Pauze van 2 seconden om fout te voorkomen met de files
 Start-Sleep -Seconds 2

#Kijkt of er al een File in de map "Luukfolder" zit anders wordt het aangemaakt

 if (Test-path $Filenametest ) {
 "De file bestaat al"
 } else {
 write-host "Aanmaken File"
New-item -name "$Filename" -path $filepath -ItemType File 
Write-host "De File is aangemaakt"
 }

#Kijkt of er al test in de file staat anders wordt dit erin gezet

#if (Test-path $Filenametest ) {
#add-content -path $Filenametest "test"
#} else{"Maak eerst de File aan"}

#Pauze van 1 seconden om fout te voorkomen met de tekst
Start-Sleep -Seconds 2

if (Test-path $Filenametest ) {
add-content -path $Filenametest "Test" 
} else{"Maak eerst de File aan"}