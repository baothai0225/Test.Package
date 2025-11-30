@echo off
dotnet clean
dotnet pack -c Release

REM Find and push the latest Test.Package.*.nupkg
for /f %%i in ('dir /b /o-d "bin\Release\Test.Package.*.nupkg" 2^>nul') do (
    dotnet nuget push "bin\Release\%%i" --api-key %GITHUB_TOKEN% --source github --skip-duplicate
    goto :end
)
:end
echo Build and push completed successfully.
