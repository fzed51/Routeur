# suppression de tous les dossier de backup de notepad++
ls -Filter nppBackup -Recurse -Directory | Remove-Item -Recurse -Force
