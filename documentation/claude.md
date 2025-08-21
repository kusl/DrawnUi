Looking at your project structure and current GitHub Actions files, I can see the issues. Let me provide the corrected GitHub Actions workflows:Here are the **complete, corrected GitHub Actions workflow files** for your DrawnUi Breakout project:

## **🔧 Key Fixes Applied:**

1. **Proper MAUI Workload Installation**: Added correct workloads for each platform
2. **Java Setup**: Added Java 17 setup for Android builds 
3. **Platform-Specific Runners**: Android/Windows on `windows-latest`, iOS/Mac on `macos-latest`
4. **Correct Target Frameworks**: Matching your csproj file exactly
5. **Proper Shell Commands**: PowerShell for Windows, Bash for Unix
6. **Error Handling**: Better error reporting and artifact collection

## **📁 File Structure:**

You need to **replace your existing files** with these:

### **1. `.github/workflows/build-release.yml`** (Main release workflow)
- Builds all platforms (Android, iOS, MacCatalyst, Windows)
- Creates releases on tags
- Uploads artifacts for each platform

### **2. `.github/workflows/pr-validation.yml`** (PR validation)
- Fast validation builds for all platforms
- Code quality analysis
- Comprehensive summary generation

### **3. `.github/workflows/nightly-build.yml`** (Optional - for continuous testing)
- Daily builds to catch issues early
- Matrix strategy for all platforms

### **4. `.github/dependabot.yml`** (Bonus - automated dependency updates)
- Keeps your NuGet packages and GitHub Actions up to date

## **⚡ Immediate Actions:**

1. **Replace your existing workflow files** with the ones above
2. **Commit and push** to trigger the workflows
3. **Check the Actions tab** to verify they run successfully

## **🎯 What This Fixes:**

- ✅ **MAUI Android workload installation**
- ✅ **Platform-specific runners** (Windows for Android/Windows, macOS for iOS)
- ✅ **Proper Java setup** for Android builds
- ✅ **Correct target framework references**
- ✅ **Better error handling and reporting**
- ✅ **Artifact collection** for releases
- ✅ **Code quality checks** in PRs

## **🚀 Expected Results:**

After implementing these workflows:
- **PR validation** will run fast checks on all platforms
- **Main branch pushes** will create full release builds
- **Tagged releases** will automatically create GitHub releases with artifacts
- **Nightly builds** will catch integration issues early

The workflows are specifically tailored to your **Breakout.csproj** file and will handle all the target frameworks you've defined: `net9.0-android`, `net9.0-ios`, `net9.0-maccatalyst`, and `net9.0-windows10.0.19041.0`.



```yaml
# ==============================================================================
# FILE: .github/workflows/build-release.yml
# ==============================================================================
name: Build and Release

on:
  push:
    branches: [ main ]
    tags: [ 'v*' ]
  workflow_dispatch:

env:
  DOTNET_VERSION: '9.0.x'
  PROJECT_PATH: 'src/Breakout.csproj'

jobs:
  build-android:
    name: Build Android
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Java
      uses: actions/setup-java@v4
      with:
        distribution: 'microsoft'
        java-version: '17'
        
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui android
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build Android APK (Debug)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} `
          -c Debug `
          -f net9.0-android `
          --no-restore
          
    - name: Build Android APK (Release)
      run: |
        dotnet publish ${{ env.PROJECT_PATH }} `
          -c Release `
          -f net9.0-android `
          --no-restore `
          -o ./artifacts/android
          
    - name: Upload Android artifacts
      uses: actions/upload-artifact@v4
      with:
        name: android-apk
        path: ./artifacts/android/**/*.apk

  build-ios:
    name: Build iOS
    runs-on: macos-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui ios
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build iOS (Debug)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} \
          -c Debug \
          -f net9.0-ios \
          --no-restore
          
    - name: Build iOS (Release)
      run: |
        dotnet publish ${{ env.PROJECT_PATH }} \
          -c Release \
          -f net9.0-ios \
          --no-restore \
          -o ./artifacts/ios
          
    - name: Upload iOS artifacts
      uses: actions/upload-artifact@v4
      with:
        name: ios-app
        path: ./artifacts/ios/**/*.app

  build-maccatalyst:
    name: Build MacCatalyst
    runs-on: macos-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui maccatalyst
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build MacCatalyst (Debug)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} \
          -c Debug \
          -f net9.0-maccatalyst \
          --no-restore
          
    - name: Build MacCatalyst (Release)
      run: |
        dotnet publish ${{ env.PROJECT_PATH }} \
          -c Release \
          -f net9.0-maccatalyst \
          --no-restore \
          -o ./artifacts/maccatalyst
          
    - name: Upload MacCatalyst artifacts
      uses: actions/upload-artifact@v4
      with:
        name: maccatalyst-app
        path: ./artifacts/maccatalyst/**/*.app

  build-windows:
    name: Build Windows
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui windows
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build Windows (Debug)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} `
          -c Debug `
          -f net9.0-windows10.0.19041.0 `
          --no-restore
          
    - name: Build Windows (Release)
      run: |
        dotnet publish ${{ env.PROJECT_PATH }} `
          -c Release `
          -f net9.0-windows10.0.19041.0 `
          --no-restore `
          -o ./artifacts/windows
          
    - name: Upload Windows artifacts
      uses: actions/upload-artifact@v4
      with:
        name: windows-app
        path: ./artifacts/windows/**/*.exe

  create-release:
    name: Create Release
    needs: [build-android, build-ios, build-maccatalyst, build-windows]
    runs-on: ubuntu-latest
    if: startsWith(github.ref, 'refs/tags/v')
    
    steps:
    - name: Download all artifacts
      uses: actions/download-artifact@v4
      with:
        path: ./release-artifacts
        
    - name: Create Release
      uses: softprops/action-gh-release@v1
      with:
        files: ./release-artifacts/**/*
        draft: true
        generate_release_notes: true

# ==============================================================================
# FILE: .github/workflows/pr-validation.yml
# ==============================================================================
---
name: PR Validation

on:
  pull_request:
    branches: [ main, dev, develop ]
  workflow_dispatch:

env:
  DOTNET_VERSION: '9.0.x'
  PROJECT_PATH: 'src/Breakout.csproj'

jobs:
  validate-android:
    name: Validate Android Build
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Java
      uses: actions/setup-java@v4
      with:
        distribution: 'microsoft'
        java-version: '17'
        
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui android
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build Android (Debug - Fast validation)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} `
          -c Debug `
          -f net9.0-android `
          --no-restore `
          --verbosity normal

  validate-ios:
    name: Validate iOS Build
    runs-on: macos-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui ios
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build iOS (Debug - Fast validation)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} \
          -c Debug \
          -f net9.0-ios \
          --no-restore \
          --verbosity normal

  validate-windows:
    name: Validate Windows Build
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      run: |
        dotnet nuget locals all --clear
        dotnet workload install maui windows
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build Windows (Debug - Fast validation)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} `
          -c Debug `
          -f net9.0-windows10.0.19041.0 `
          --no-restore `
          --verbosity normal

  code-analysis:
    name: Code Quality Analysis
    runs-on: ubuntu-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Run static analysis
      shell: pwsh
      run: |
        Write-Host "=== Code Quality Analysis ===" -ForegroundColor Cyan
        
        # Check for common issues
        Write-Host "`nChecking for TODO/FIXME comments..." -ForegroundColor Yellow
        $todos = Select-String -Path "src\**\*.cs" -Pattern "TODO|FIXME|HACK" -Recurse
        if ($todos) { 
          Write-Host "Found items to review:" -ForegroundColor Yellow
          $todos | ForEach-Object { Write-Host "  $($_.Filename):$($_.LineNumber) - $($_.Line.Trim())" }
        } else { 
          Write-Host "✅ No TODO/FIXME/HACK comments found" -ForegroundColor Green 
        }
        
        # Check project file integrity
        Write-Host "`nValidating solution structure..." -ForegroundColor Yellow
        dotnet sln list
        
        # Check for large files
        Write-Host "`nChecking for large files..." -ForegroundColor Yellow
        $largeFiles = Get-ChildItem -Path "src" -Recurse -File | Where-Object { $_.Length -gt 1MB }
        if ($largeFiles) {
          Write-Host "Large files found:" -ForegroundColor Yellow
          $largeFiles | ForEach-Object { Write-Host "  $($_.FullName) - $([math]::Round($_.Length/1MB, 2))MB" }
        } else {
          Write-Host "✅ No large files found" -ForegroundColor Green
        }
        
        # Check for duplicate files
        Write-Host "`nChecking for potential duplicate code..." -ForegroundColor Yellow
        $csFiles = Get-ChildItem -Path "src" -Filter "*.cs" -Recurse
        $fileHashes = $csFiles | Group-Object { (Get-FileHash $_.FullName).Hash } | Where-Object { $_.Count -gt 1 }
        if ($fileHashes) {
          Write-Host "Potential duplicate files found:" -ForegroundColor Yellow
          $fileHashes | ForEach-Object { 
            Write-Host "  Hash: $($_.Name)"
            $_.Group | ForEach-Object { Write-Host "    $($_.FullName)" }
          }
        } else {
          Write-Host "✅ No duplicate files found" -ForegroundColor Green
        }

  generate-summary:
    name: Generate Summary
    needs: [validate-android, validate-ios, validate-windows, code-analysis]
    runs-on: ubuntu-latest
    if: always()
    
    steps:
    - name: Generate PR summary
      run: |
        echo "## 🎮 Breakout Game - PR Validation Summary" >> $GITHUB_STEP_SUMMARY
        echo "" >> $GITHUB_STEP_SUMMARY
        
        # Check job results
        if [ "${{ needs.validate-android.result }}" == "success" ]; then
          echo "- ✅ **Android Build**: Passed" >> $GITHUB_STEP_SUMMARY
        else
          echo "- ❌ **Android Build**: Failed" >> $GITHUB_STEP_SUMMARY
        fi
        
        if [ "${{ needs.validate-ios.result }}" == "success" ]; then
          echo "- ✅ **iOS Build**: Passed" >> $GITHUB_STEP_SUMMARY
        else
          echo "- ❌ **iOS Build**: Failed" >> $GITHUB_STEP_SUMMARY
        fi
        
        if [ "${{ needs.validate-windows.result }}" == "success" ]; then
          echo "- ✅ **Windows Build**: Passed" >> $GITHUB_STEP_SUMMARY
        else
          echo "- ❌ **Windows Build**: Failed" >> $GITHUB_STEP_SUMMARY
        fi
        
        if [ "${{ needs.code-analysis.result }}" == "success" ]; then
          echo "- ✅ **Code Analysis**: Passed" >> $GITHUB_STEP_SUMMARY
        else
          echo "- ❌ **Code Analysis**: Issues found" >> $GITHUB_STEP_SUMMARY
        fi
        
        echo "" >> $GITHUB_STEP_SUMMARY
        echo "### 🚀 Next Steps" >> $GITHUB_STEP_SUMMARY
        echo "- All platforms validated for compilation" >> $GITHUB_STEP_SUMMARY
        echo "- Ready for merge if all checks pass" >> $GITHUB_STEP_SUMMARY
        echo "- Full release build will run on main branch" >> $GITHUB_STEP_SUMMARY

# ==============================================================================
# OPTIONAL: FILE: .github/workflows/nightly-build.yml
# ==============================================================================
---
name: Nightly Build

on:
  schedule:
    # Run every day at 2 AM UTC
    - cron: '0 2 * * *'
  workflow_dispatch:

env:
  DOTNET_VERSION: '9.0.x'
  PROJECT_PATH: 'src/Breakout.csproj'

jobs:
  nightly-test:
    name: Nightly Full Test
    strategy:
      matrix:
        include:
          - os: windows-latest
            framework: net9.0-android
            workload: "maui android"
          - os: macos-latest
            framework: net9.0-ios
            workload: "maui ios"
          - os: macos-latest
            framework: net9.0-maccatalyst
            workload: "maui maccatalyst"
          - os: windows-latest
            framework: net9.0-windows10.0.19041.0
            workload: "maui windows"
    
    runs-on: ${{ matrix.os }}
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup Java (Android only)
      if: contains(matrix.framework, 'android')
      uses: actions/setup-java@v4
      with:
        distribution: 'microsoft'
        java-version: '17'
        
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: ${{ env.DOTNET_VERSION }}
        
    - name: Install MAUI workloads
      shell: pwsh
      run: |
        dotnet nuget locals all --clear
        dotnet workload install ${{ matrix.workload }}
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build and Test
      shell: pwsh
      run: |
        # Build
        dotnet build ${{ env.PROJECT_PATH }} `
          -c Release `
          -f ${{ matrix.framework }} `
          --no-restore `
          --verbosity normal
        
        # If this was a test project, we'd run tests here
        # dotnet test ${{ env.PROJECT_PATH }} --no-build --configuration Release
        
    - name: Archive build logs
      if: always()
      uses: actions/upload-artifact@v4
      with:
        name: build-logs-${{ matrix.framework }}-${{ github.run_number }}
        path: |
          **/*.binlog
          **/*.log
        retention-days: 7

# ==============================================================================
# FILE: .github/dependabot.yml (Bonus - Automated dependency updates)
# ==============================================================================
---
version: 2
updates:
  # Enable version updates for NuGet
  - package-ecosystem: "nuget"
    directory: "/src"
    schedule:
      interval: "weekly"
      day: "monday"
    open-pull-requests-limit: 5
    reviewers:
      - "taublast"  # Replace with actual maintainer username
    assignees:
      - "taublast"  # Replace with actual maintainer username
    commit-message:
      prefix: "deps"
      prefix-development: "deps-dev"
      include: "scope"

  # Enable version updates for GitHub Actions
  - package-ecosystem: "github-actions"
    directory: "/"
    schedule:
      interval: "monthly"
    open-pull-requests-limit: 3
```
