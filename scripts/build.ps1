$Env:Path += ";C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.11.25503\bin\HostX86\x64\"
$CXX_FLAGS = "-std=c++17 -Wall -g3 -Iinclude/"

If ( Test-Path build/ ) { Remove-Item -Recurse -Force build/ }
mkdir build/ > $null

$CXX_FILES = Get-ChildItem -Path src/ -Recurse -Include *.cpp
ForEach ( $infile in $CXX_FILES ) {
    $outfile = "build/" + [System.IO.Path]::GetFileNameWithoutExtension($infile) + ".o"
    Write-Host "Compiling $infile -> $outfile"
    Invoke-Command "cl $CXX_FLAGS -c $infile -o $outfile"
}

Write-Host "Linking -> build/cli"
Invoke-Command "cl $CXX_FLAGS $CXX_FILES -o build/cli"
