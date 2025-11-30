@echo off
dotnet pack -c Release
dotnet nuget push bin/Release/Test.Package.1.0.6.nupkg --api-key %GITHUB_TOKEN% --source github
echo Build and push completed successfully.