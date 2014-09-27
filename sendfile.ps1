# liste les pdf pour init fichier
write-output "fichier" >tmp_file_list.csv 
Get-ChildItem *.pdf -name >>tmp_file_list.csv 

# init fichier pour envoi
write-output "subject,file" >file_list.csv
$list = Import-Csv tmp_file_list.csv 
foreach ($entry in $list)
{
write-output "$($entry.fichier),$($entry.fichier)" >>file_list.csv
}
