Get-Date -Format "yyyy-MM-dd HH:mm:ss";

# Get the directory where this script is located, then get its parent directory
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$parentDir = Split-Path -Parent $scriptDir

# Define the output file path in the scripts folder
$outFile = Join-Path $scriptDir "llm-input.txt"

Write-Host "Script directory: $scriptDir"
Write-Host "Parent directory: $parentDir"
Write-Host "Output file: $outFile"

# Wrap all commands in a script block and pipe the collected output to Out-File
& {
    # Set location to the parent directory
    Set-Location $parentDir
    Get-Location
    # --- Commands ---
    # The output of each command is sent to the pipeline automatically
    git status
    git remote show origin
    # git clean -dfx
    tree /F
    # --- File Content Sections ---
    # Replace Write-Host with simple strings. They will be written to the output stream.
    # Note: Color formatting is lost when writing to a plain text file.
   
    "`n=== SLN FILE ==="
    Get-Content *.sln
    # "`n=== GITHUB ACTIONS ==="
    # Get-Content .github\workflows\*.yml
    "`n=== CSPROJ FILES ==="
    Get-ChildItem -Recurse -Filter *.csproj | ForEach-Object {
        "`n--- $($_.FullName) ---"
        Get-Content $_.FullName
    }
    "`n=== CS FILES ==="
    Get-ChildItem -Recurse -Filter *.cs | ForEach-Object {
        "`n--- $($_.FullName) ---"
        Get-Content $_.FullName
    }
    "`n=== feature FILES ==="
    Get-ChildItem -Recurse -Filter *.feature | ForEach-Object {
        "`n--- $($_.FullName) ---"
        Get-Content $_.FullName
    }
} | Out-File -FilePath $outFile -Encoding utf8

Write-Host "Script output has been saved to $outFile"
Get-Date -Format "yyyy-MM-dd HH:mm:ss";
