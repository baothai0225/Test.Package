@echo off
dotnet pack -c Release

REM Push any Test.Package.*.nupkg in Release
dotnet nuget push "bin\Release\Test.Package.*.nupkg" --api-key %GITHUB_TOKEN% --source github

echo Build and push completed successfully.
