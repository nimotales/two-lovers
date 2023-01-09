Get-ChildItem -Path .\src\ -Filter *.docx | ForEach-Object {
    pandoc -o $_.FullName.Replace('.docx', '.md').Replace('src\', '') ($_.FullName)
}