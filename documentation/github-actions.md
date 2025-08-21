# GitHub Actions Setup for Breakout Game

This guide will help you set up automated build, test, and release workflows for your .NET MAUI Breakout game.

## Quick Setup

1. **Create the workflows directory** in your repository:
   ```bash
   mkdir -p .github/workflows
   ```

2. **Add the workflow files**:
   - Copy the main workflow as `.github/workflows/build-release.yml`
   - Copy the PR validation workflow as `.github/workflows/pr-validation.yml`

3. **Commit and push**:
   ```bash
   git add .github/
   git commit -m "Add GitHub Actions workflows for CI/CD"
   git push origin main
   ```

## What the Workflows Do

### Main Workflow (`build-release.yml`)
**Triggers on**: Every push to `main` or `dev` branches, and on pull requests to `main`

**Jobs**:
- **Android Build**: Creates both debug and release APKs
- **Windows Build**: Creates Windows executable
- **iOS Build**: Validates iOS build (may fail without proper certificates)
- **Tests**: Runs any test projects found
- **Release Creation**: Automatically creates GitHub releases with downloadable APKs

### PR Validation Workflow (`pr-validation.yml`)
**Triggers on**: Pull requests to `main` or `dev`

**Purpose**: Quick validation to ensure PRs don't break the build

## Expected Outputs

### For Every Commit to Main:
- ✅ Android Debug APK
- ✅ Android Release APK  
- ✅ Windows Release Build
- ✅ Automatic GitHub Release with downloads
- ✅ Build artifacts stored for 30-90 days

### For Pull Requests:
- ✅ Quick build validation
- ✅ Dependency check
- ✅ Build summary in PR

## Customization Options

### To Build Only Android:
Remove the `build-windows` and `build-ios` jobs from the main workflow.

### To Change Release Naming:
Modify the version generation in the `create-release` job:
```yaml
VERSION="v$(date +'%Y.%m.%d')-$(echo ${{ github.sha }} | cut -c1-7)"
```

### To Add Signed APKs:
Add these secrets to your repository:
- `KEYSTORE_FILE` (base64 encoded keystore)
- `KEYSTORE_PASSWORD`
- `KEY_ALIAS`
- `KEY_PASSWORD`

Then modify the Android build step to include signing.

### To Skip Releases on Feature Branches:
The workflow already does this - releases only happen on `main` branch pushes.

## Repository Settings

### Required Actions Permissions:
1. Go to **Settings** → **Actions** → **General**
2. Set **Workflow permissions** to "Read and write permissions"
3. Check "Allow GitHub Actions to create and approve pull requests"

### Artifacts Storage:
- Debug builds: 30 days retention
- Release builds: 90 days retention
- Releases: Permanent (until manually deleted)

## Troubleshooting

### Common Issues:

1. **"Workload not found" errors**:
   - The workflow installs MAUI workloads automatically
   - If issues persist, check the .NET version matches your local setup

2. **iOS build failures**:
   - Expected without proper provisioning profiles
   - Set `continue-on-error: true` for iOS builds if needed

3. **Missing APK files**:
   - Check the build logs for specific errors
   - Ensure the project file paths are correct

### Monitoring Builds:
- Go to **Actions** tab in your GitHub repository
- Click on any workflow run to see detailed logs
- Download artifacts from the workflow summary page

## Next Steps

1. **Test the workflow**: Push a commit and watch the Actions tab
2. **Customize releases**: Modify the release notes template
3. **Add signing**: Set up APK signing for production releases
4. **Add tests**: Create test projects to enhance the validation
5. **Platform-specific builds**: Add iOS/macOS builds when certificates are available

## Files Created
- `.github/workflows/build-release.yml` - Main CI/CD pipeline
- `.github/workflows/pr-validation.yml` - Pull request validation

Your APKs will be available as:
- **Artifacts** on each workflow run (temporary)
- **Releases** on the main repository page (permanent)

Happy building! 🚀📱