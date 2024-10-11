'Const vbTextCompare = 1
Dim folderName
Dim fso, folder, file
Dim sNumber
Dim sPrefix, sSuffix

' Path and prefix
folderName = ".\"
sPrefix = "Mai.2024 "
sExtension = ".txt"
sTarget = ".MOV"
sNumber = 0

' Create filesystem object and the folder object
Set fso = CreateObject("Scripting.FileSystemObject")  
Set folder = fso.GetFolder(folderName)  

For Each file In folder.Files
    ' Check for "Part" and ".MOV" in file name
    If StrComp(Right(file.Name, 4), sExtension , vbTextCompare) = 0 Then
	sNumber = sNumber + 1
        ' Rename file
        file.Name = sPrefix & "(" & sNumber & ")" & sTarget
    End If
Next

MsgBox(sNumber & " changed files")