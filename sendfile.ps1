# liste les pdf pour init fichier
write-output "fichier" >tmp_file_list.csv 
Get-ChildItem *.pdf -name >>tmp_file_list.csv 
