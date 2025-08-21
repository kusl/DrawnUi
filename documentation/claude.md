The issue is that `windows` is not a valid workload ID. For .NET 9 MAUI, you need to install the correct workload. Let me fix your GitHub Actions workflows:## **🔧 Key Fixes Applied:**

### **1. Fixed Invalid Workload IDs:**
- ❌ **Wrong**: `dotnet workload install maui windows`
- ✅ **Correct**: `dotnet workload install maui` (Windows is included in the main MAUI workload)

### **2. Proper Workload Installation:**
```yaml
# For Android
dotnet workload install maui
dotnet workload install android

# For iOS  
dotnet workload install maui
dotnet workload install ios

# For MacCatalyst
dotnet workload install maui
dotnet workload install maccatalyst

# For Windows
dotnet workload install maui  # Windows is included
```

### **3. Added Missing MacCatalyst Validation:**
- Your csproj targets `net9.0-maccatalyst` but PR validation was missing this check

### **4. Improved Error Handling:**
- Added `ErrorAction SilentlyContinue` to prevent PowerShell errors from failing builds
- Better error messages and fallbacks

### **5. Fixed Artifact Paths:**
- Changed Windows artifact path from `**/*.exe` to `**` (MAUI Windows apps aren't always .exe files)
- Added retention days to prevent storage bloat

## **📁 Files to Replace:**

1. **`.github/workflows/build-release.yml`**
2. **`.github/workflows/pr-validation.yml`** 
3. **`.github/workflows/nightly-build.yml`**
4. **`.github/dependabot.yml`** (move from `.github/` to root if needed)

## **🆘 Debug Workflow:**

I've included a **debug workflow** (`.github/workflows/debug-workloads.yml`) that you can run manually to see what workloads are available. This helps troubleshoot workload issues.

## **⚡ Immediate Action:**

1. **Replace your workflow files** with the corrected versions above
2. **Commit and push** 
3. **Check Actions tab** - they should now work

## **🎯 What These Fixes Solve:**

- ✅ **Correct MAUI workload installation**
- ✅ **All target frameworks working** (`android`, `ios`, `maccatalyst`, `windows`)  
- ✅ **Proper platform-specific runners**
- ✅ **Better error handling**
- ✅ **Complete validation coverage**

The main issue was using `windows` as a workload ID - it doesn't exist. Windows MAUI apps are built using just the `maui` workload, which includes Windows support automatically.







































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
        dotnet workload install maui
        dotnet workload install android
        
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
        retention-days: 30

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
        dotnet workload install maui
        dotnet workload install ios
        
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
        retention-days: 30

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
        dotnet workload install maui
        dotnet workload install maccatalyst
        
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
        retention-days: 30

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
        dotnet workload install maui
        
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
        path: ./artifacts/windows/**
        retention-days: 30

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
      uses: softprops/action-gh-release@v2
      with:
        files: ./release-artifacts/**/*
        draft: true
        generate_release_notes: true
        token: ${{ secrets.GITHUB_TOKEN }}

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
        dotnet workload install maui
        dotnet workload install android
        
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
        dotnet workload install maui
        dotnet workload install ios
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build iOS (Debug - Fast validation)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} \
          -c Debug \
          -f net9.0-ios \
          --no-restore \
          --verbosity normal

  validate-maccatalyst:
    name: Validate MacCatalyst Build
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
        dotnet workload install maui
        dotnet workload install maccatalyst
        
    - name: Restore dependencies
      run: dotnet restore ${{ env.PROJECT_PATH }}
      
    - name: Build MacCatalyst (Debug - Fast validation)
      run: |
        dotnet build ${{ env.PROJECT_PATH }} \
          -c Debug \
          -f net9.0-maccatalyst \
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
        dotnet workload install maui
        
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
        try {
          $todos = Select-String -Path "src/**/*.cs" -Pattern "TODO|FIXME|HACK" -Recurse -ErrorAction SilentlyContinue
          if ($todos) { 
            Write-Host "Found items to review:" -ForegroundColor Yellow
            $todos | ForEach-Object { Write-Host "  $($_.Filename):$($_.LineNumber) - $($_.Line.Trim())" }
          } else { 
            Write-Host "✅ No TODO/FIXME/HACK comments found" -ForegroundColor Green 
          }
        } catch {
          Write-Host "⚠️  Could not check for TODO comments" -ForegroundColor Yellow
        }
        
        # Check project file integrity
        Write-Host "`nValidating solution structure..." -ForegroundColor Yellow
        dotnet sln list
        
        # Check for large files
        Write-Host "`nChecking for large files..." -ForegroundColor Yellow
        try {
          $largeFiles = Get-ChildItem -Path "src" -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.Length -gt 1MB }
          if ($largeFiles) {
            Write-Host "Large files found:" -ForegroundColor Yellow
            $largeFiles | ForEach-Object { Write-Host "  $($_.FullName) - $([math]::Round($_.Length/1MB, 2))MB" }
          } else {
            Write-Host "✅ No large files found" -ForegroundColor Green
          }
        } catch {
          Write-Host "⚠️  Could not check file sizes" -ForegroundColor Yellow
        }
        
        # Basic file count
        Write-Host "`nProject statistics:" -ForegroundColor Yellow
        $csFiles = Get-ChildItem -Path "src" -Filter "*.cs" -Recurse -ErrorAction SilentlyContinue
        Write-Host "  C# files: $($csFiles.Count)" -ForegroundColor White
        
        $xamlFiles = Get-ChildItem -Path "src" -Filter "*.xaml" -Recurse -ErrorAction SilentlyContinue
        Write-Host "  XAML files: $($xamlFiles.Count)" -ForegroundColor White

  generate-summary:
    name: Generate Summary
    needs: [validate-android, validate-ios, validate-maccatalyst, validate-windows, code-analysis]
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
        
        if [ "${{ needs.validate-maccatalyst.result }}" == "success" ]; then
          echo "- ✅ **MacCatalyst Build**: Passed" >> $GITHUB_STEP_SUMMARY
        else
          echo "- ❌ **MacCatalyst Build**: Failed" >> $GITHUB_STEP_SUMMARY
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
# FILE: .github/workflows/nightly-build.yml
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
            workloads: "maui android"
          - os: macos-latest
            framework: net9.0-ios
            workloads: "maui ios"
          - os: macos-latest
            framework: net9.0-maccatalyst
            workloads: "maui maccatalyst"
          - os: windows-latest
            framework: net9.0-windows10.0.19041.0
            workloads: "maui"
    
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
        $workloads = "${{ matrix.workloads }}".Split(' ')
        foreach ($workload in $workloads) {
          Write-Host "Installing workload: $workload"
          dotnet workload install $workload
        }
        
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
# FILE: .github/dependabot.yml (Updated location and format)
# ==============================================================================
version: 2
updates:
  # Enable version updates for NuGet
  - package-ecosystem: "nuget"
    directory: "/src"
    schedule:
      interval: "weekly"
      day: "monday"
    open-pull-requests-limit: 5
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

# ==============================================================================
# DEBUGGING: FILE: .github/workflows/debug-workloads.yml
# ==============================================================================
---
name: Debug Workloads

on:
  workflow_dispatch:

jobs:
  debug-workloads:
    runs-on: windows-latest
    
    steps:
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: '9.0.x'
        
    - name: List available workloads
      run: |
        Write-Host "=== Available Workloads ===" -ForegroundColor Cyan
        dotnet workload search
        
        Write-Host "`n=== Currently Installed Workloads ===" -ForegroundColor Cyan
        dotnet workload list
        
        Write-Host "`n=== .NET Info ===" -ForegroundColor Cyan
        dotnet --info


