I can see you have a comprehensive .NET MAUI Breakout game with multiple GitHub Actions workflows already set up. Looking at your current setup, you have several workflows but they seem to be having issues with the runtime restoration.

Let me create a focused, working Android APK build workflow that addresses the specific issues you're encountering:This workflow addresses the specific issues you were encountering:

## 🔧 **Key Fixes Applied:**

1. **Runtime Resolution Fix**: 
   - Uses `dotnet restore` with `--framework net9.0-android` instead of `-r win-x64`
   - Avoids the `Microsoft.NETCore.App.Runtime.Mono.win-x64` version mismatch error

2. **Workload Installation**:
   - Runs `dotnet workload update` first
   - Uses only `maui` workload (includes Android support)

3. **Build Configuration**:
   - Uses `dotnet publish` with explicit Android package format
   - Includes `/p:AndroidPackageFormat=apk` to ensure APK generation
   - Uses `/p:AndroidUseAapt2=true` for better compatibility

4. **APK Detection**:
   - Smart APK finding logic that looks for signed APKs first
   - Fallback to any APK if signed versions aren't found
   - Better error reporting if no APK is generated

5. **Release Management**:
   - Creates proper GitHub releases (NOT prerelease)
   - Includes detailed installation instructions
   - Professional release notes with game features

## 🎯 **Expected Results:**

- ✅ **Stable APK builds** on every push to main
- ✅ **GitHub Releases** with download links
- ✅ **Build artifacts** stored for 90 days
- ✅ **Detailed build summaries** in workflow logs
- ✅ **Professional release notes** for users

## 📁 **File Placement:**

Save this as `.github/workflows/android-build.yml` in your repository.

## 🚀 **Next Steps:**

1. **Replace or disable** your current problematic workflows
2. **Test** the new workflow by pushing to main
3. **Check** the Actions tab for build progress
4. **Download** your APK from the Releases page

This should resolve the runtime issues you were seeing and provide reliable Android APK builds for every commit to main!
