## JREN.BAT v2.8 - Rename files/folders using regular expressions
https://www.dostips.com/forum/viewtopic.php?f=3&t=6081

Example:
```
jRename-v2.8.bat ".*\.txt$" "'Mai.2024 ('+$n+').txt'" /npad 3 /j /i
```
Result:
```
zza.txt  -->  Mai.2024 (001).txt
zzb.txt  -->  Mai.2024 (002).txt
zzc.txt  -->  Mai.2024 (003).txt
zzd.txt  -->  Mai.2024 (004).txt
zze.txt  -->  Mai.2024 (005).txt
zzf.txt  -->  Mai.2024 (006).txt
```