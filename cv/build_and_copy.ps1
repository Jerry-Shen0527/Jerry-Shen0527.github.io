# Build CV and copy to static/uploads for website download
# Usage: pwsh -File cv/build_and_copy.ps1

Set-Location "$PSScriptRoot"

# Step 1: Compile the CV
Write-Host "Compiling CV..." -ForegroundColor Cyan
pdflatex -interaction=nonstopmode -synctex=1 resume.tex
biber resume
pdflatex -interaction=nonstopmode -synctex=1 resume.tex
pdflatex -interaction=nonstopmode -synctex=1 resume.tex

if (-not (Test-Path "resume.pdf")) {
    Write-Host "ERROR: resume.pdf was not generated!" -ForegroundColor Red
    exit 1
}

# Step 2: Copy to static/uploads for Hugo to serve
$dest = Join-Path $PSScriptRoot "..\static\uploads\resume.pdf"
Copy-Item "resume.pdf" -Destination $dest -Force
Write-Host "CV copied to static/uploads/resume.pdf" -ForegroundColor Green

# Step 3: Clean up auxiliary files
$extensions = @("*.aux", "*.bbl", "*.bcf", "*.blg", "*.fdb_latexmk", "*.fls", "*.log", "*.out", "*.run.xml", "*.synctex.gz")
foreach ($ext in $extensions) {
    Remove-Item -Path $ext -ErrorAction SilentlyContinue
}
Remove-Item -Path "cv\*.aux" -ErrorAction SilentlyContinue
Write-Host "Auxiliary files cleaned up." -ForegroundColor Green

Write-Host "`nDone! CV is ready at static/uploads/resume.pdf" -ForegroundColor Green
