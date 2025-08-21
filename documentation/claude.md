Perfect! I've created a minimal, focused workflow that will:

## ✅ What it does:
1. **Triggers on every push to main branch** (plus manual dispatch)
2. **Builds Android APK only** - no other platforms to avoid complications
3. **Creates a GitHub Release** - marked as **stable release** (NOT prerelease)
4. **Uploads APK as downloadable artifact** 

## 🎯 Key Features:
- **Clean, focused build** - Only Android, only what works
- **Automatic versioning** - Uses timestamp + commit hash (e.g., `v2025.08.21-1430-a1b2c3d`)
- **Stable releases** - `prerelease: false` and `make_latest: true`
- **Detailed release notes** - Installation instructions, build info, game features
- **Error handling** - Will fail clearly if APK isn't found
- **Build diagnostics** - Shows APK size, location, etc.

## 📱 Result:
Every commit to main will automatically:
1. Build the Android APK
2. Create a new GitHub release 
3. Attach the APK file for download
4. Mark it as the latest stable release

## 🚀 To use:
1. Save this as `.github/workflows/build-android-apk.yml`
2. Push to main branch
3. Check the "Actions" tab to see it running
4. Find your APK in the "Releases" section

The APK will be ready to install on any Android device - no more wrestling with Windows runtimes or iOS certificates!

