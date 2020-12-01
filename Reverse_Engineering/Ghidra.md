# CheatSheet  
https://ghidra-sre.org/CheatSheet.html  
  
# Tips  
https://isc.sans.edu/forums/diary/A+few+Ghidra+tips+for+IDA+users+part+0+automatic+comments+for+API+call+parameters/24806/  
https://isc.sans.edu/forums/diary/A+few+Ghidra+tips+for+IDA+users+part+1+the+decompilerunreachable+code/24822/  
https://isc.sans.edu/forums/diary/A+few+Ghidra+tips+for+IDA+users+part+2+strings+and+parameters/24848/  
https://isc.sans.edu/diary/A+few+Ghidra+tips+for+IDA+users%2C+part+3+-+conversion%2C+labels%2C+and+comments/24908  
https://isc.sans.edu/forums/diary/A+few+Ghidra+tips+for+IDA+users+part+4+function+call+graphs/25032/  
    
### PDB Parser support on Windows
Must have Visual Studio IDE installed or msdia140.dll handy  
```PowerShell
regsvr32 "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\DIA SDK\bin\msdia140.dll"
```
Docs Reference: /ghidra_9.1.2_PUBLIC/docs/README_PDB.html  
