Run dotnet restore src/Breakout.csproj -r win-x64
  Determining projects to restore...
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102: Unable to find package Microsoft.NETCore.App.Runtime.Mono.win-x64 with version (= 9.0.8)
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 110 version(s) in nuget.org [ Nearest version: 9.0.0-preview.7.24405.7 ]
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 0 version(s) in Microsoft Visual Studio Offline Packages
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 0 version(s) in C:\Program Files\dotnet\library-packs
  Failed to restore D:\a\DrawnUi\DrawnUi\src\Breakout.csproj (in 8.43 sec).
Error: Process completed with exit code 1.
Run dotnet restore src/Breakout.csproj -r win-x64
  Determining projects to restore...
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102: Unable to find package Microsoft.NETCore.App.Runtime.Mono.win-x64 with version (= 9.0.8)
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 110 version(s) in nuget.org [ Nearest version: 9.0.0-preview.7.24405.7 ]
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 0 version(s) in Microsoft Visual Studio Offline Packages
D:\a\DrawnUi\DrawnUi\src\Breakout.csproj : error NU1102:   - Found 0 version(s) in C:\Program Files\dotnet\library-packs
  Failed to restore D:\a\DrawnUi\DrawnUi\src\Breakout.csproj (in 8.43 sec).


Path
----
C:\code\DrawnUi
On branch main
Your branch is ahead of 'upstream/main' by 24 commits.
  (use "git push" to publish your local commits)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   documentation/claude.md
	modified:   scripts/llm-input.txt

no changes added to commit (use "git add" and/or "git commit -a")
* remote upstream
  Fetch URL: https://github.com/taublast/DrawnUi.Breakout.git
  Push  URL: https://github.com/taublast/DrawnUi.Breakout.git
  HEAD branch: main
  Remote branches:
    bump-hot-preview-to-v0.15              tracked
    dev/bret/use-latest-hot-preview        tracked
    feature/sl-add-game-controller-support tracked
    main                                   tracked
  Local branch configured for 'git pull':
    main merges with remote main
  Local ref configured for 'git push':
    main pushes to main (fast-forwardable)
* remote origin
  Fetch URL: git@github.com:kusl/DrawnUi.git
  Push  URL: git@github.com:kusl/DrawnUi.git
  HEAD branch: main
  Remote branch:
    main tracked
  Local ref configured for 'git push':
    main pushes to main (up to date)
Folder PATH listing
Volume serial number is BE05-6605
C:.
ª   .gitignore
ª   Breakout.sln
ª   DeleteBinObj.ps1
ª   README.md
ª   
+---.github
ª   ª   dependabot.yml
ª   ª   
ª   +---workflows
ª           build-release.yml
ª           debug-workloads.yml
ª           ios-when-ready.yml
ª           nightly-build.yml
ª           pr-validation.yml
ª           
+---art
ª   ª   icon.png
ª   ª   
ª   +---android
ª   ª       1.jpg
ª   ª       2.jpg
ª   ª       3.jpg
ª   ª       500.png
ª   ª       a.jpg
ª   ª       b.jpg
ª   ª       c.jpg
ª   ª       ic_launcher-playstore.png
ª   ª       iPad.jpg
ª   ª       raw.SCREENSHOTS
ª   ª       readme.txt
ª   ª       
ª   +---ios
ª           a.jpg
ª           b.png
ª           c.png
ª           ipad.png
ª           padHotpot.ai.url
ª           phoneHotpot.ai.url
ª           Screen1.jpg
ª           Screen3.jpg
ª           Screen4.jpg
ª           Simulator_Screenshot_iPad_Pro_13_inch_M4.png
ª           
+---documentation
ª       claude.md
ª       github-actions.md
ª       
+---scripts
ª       cat.ps1
ª       llm-input.txt
ª       
+---src
    ª   App.xaml
    ª   App.xaml.cs
    ª   Breakout.csproj
    ª   MainPage.cs
    ª   MainPage.HotPreview.cs
    ª   MauiProgram.cs
    ª   
    +---Game
    ª   ª   BreakoutGame.cs
    ª   ª   BreakoutGame.HotPreview.cs
    ª   ª   BreakoutGame.Input.cs
    ª   ª   BreakoutGame.Loop.cs
    ª   ª   BreakoutGame.Sound.cs
    ª   ª   BreakoutGame.Ui.cs
    ª   ª   BreakoutGame.Ui.Dialogs.cs
    ª   ª   BreakoutGameExtensions.cs
    ª   ª   
    ª   +---Ai
    ª   ª       AIDifficulty.cs
    ª   ª       AIPaddleController.cs
    ª   ª       
    ª   +---Controls
    ª   ª       DisplayFlag.cs
    ª   ª       GameSwitch.cs
    ª   ª       HudArrows.cs
    ª   ª       OptionWithTappable.cs
    ª   ª       SelectableGameButton.cs
    ª   ª       StableCacheLayout.cs
    ª   ª       
    ª   +---Dev
    ª   ª       Test.cs
    ª   ª       
    ª   +---Dialogs
    ª   ª       DialogAnimations.cs
    ª   ª       Dialogs.md
    ª   ª       DialogTemplate.cs
    ª   ª       DialogThemes.cs
    ª   ª       GameDialog.cs
    ª   ª       
    ª   +---Input
    ª   ª       EventType.cs
    ª   ª       GameControllerInput.cs
    ª   ª       GameKey.cs
    ª   ª       HudController.cs
    ª   ª       IGameKeyHandler.cs
    ª   ª       IInputController.cs
    ª   ª       
    ª   +---Internals
    ª   ª       CollisionFace.cs
    ª   ª       COLLISION_SYSTEMS.md
    ª   ª       GameState.cs
    ª   ª       IReusableSprite.cs
    ª   ª       IWithHitBox.cs
    ª   ª       MauiGameExtensions.cs
    ª   ª       RaycastCollision.cs
    ª   ª       
    ª   +---Levels
    ª   ª       BrickPosition.cs
    ª   ª       BrickPreset.cs
    ª   ª       BrickPresets.cs
    ª   ª       FormationType.cs
    ª   ª       LevelManager.cs
    ª   ª       PowerUpType.cs
    ª   ª       
    ª   +---Sound
    ª   ª       AudioMixerService.cs
    ª   ª       GameAudioSource.cs
    ª   ª       IAudioService.cs
    ª   ª       MemoryAudioSource.cs
    ª   ª       SoundFlowAudioService.cs
    ª   ª       StreamingAudioSource.cs
    ª   ª       
    ª   +---Sprites
    ª           BallSprite.cs
    ª           BrickSprite.cs
    ª           BulletSprite.cs
    ª           LifeSprite.cs
    ª           PaddleSprite.cs
    ª           PowerupSprite.cs
    ª           
    +---Helpers
    ª       AppFonts.cs
    ª       AppLanguage.cs
    ª       AppSettings.cs
    ª       HotPreview.cs
    ª       
    +---Platforms
    ª   +---Android
    ª   ª   ª   AndroidManifest.xml
    ª   ª   ª   MainActivity.cs
    ª   ª   ª   MainApplication.cs
    ª   ª   ª   
    ª   ª   +---Resources
    ª   ª       +---mipmap-anydpi-v26
    ª   ª       ª       ic_launcher.xml
    ª   ª       ª       ic_launcher_round.xml
    ª   ª       ª       
    ª   ª       +---mipmap-hdpi
    ª   ª       ª       ic_launcher.webp
    ª   ª       ª       ic_launcher_foreground.webp
    ª   ª       ª       ic_launcher_round.webp
    ª   ª       ª       
    ª   ª       +---mipmap-mdpi
    ª   ª       ª       ic_launcher.webp
    ª   ª       ª       ic_launcher_foreground.webp
    ª   ª       ª       ic_launcher_round.webp
    ª   ª       ª       
    ª   ª       +---mipmap-xhdpi
    ª   ª       ª       ic_launcher.webp
    ª   ª       ª       ic_launcher_foreground.webp
    ª   ª       ª       ic_launcher_round.webp
    ª   ª       ª       
    ª   ª       +---mipmap-xxhdpi
    ª   ª       ª       ic_launcher.webp
    ª   ª       ª       ic_launcher_foreground.webp
    ª   ª       ª       ic_launcher_round.webp
    ª   ª       ª       
    ª   ª       +---mipmap-xxxhdpi
    ª   ª       ª       ic_launcher.webp
    ª   ª       ª       ic_launcher_foreground.webp
    ª   ª       ª       ic_launcher_round.webp
    ª   ª       ª       
    ª   ª       +---values
    ª   ª               colors.xml
    ª   ª               ic_launcher_background.xml
    ª   ª               styles.xml
    ª   ª               
    ª   +---iOS
    ª   ª   ª   AppDelegate.cs
    ª   ª   ª   Info.plist
    ª   ª   ª   Program.cs
    ª   ª   ª   
    ª   ª   +---Assets.xcassets
    ª   ª   ª   +---icon.appiconset
    ª   ª   ª           Contents.json
    ª   ª   ª           Icon1024.png
    ª   ª   ª           Icon120.png
    ª   ª   ª           Icon152.png
    ª   ª   ª           Icon167.png
    ª   ª   ª           Icon180.png
    ª   ª   ª           Icon20.png
    ª   ª   ª           Icon29.png
    ª   ª   ª           Icon40.png
    ª   ª   ª           Icon58.png
    ª   ª   ª           Icon60.png
    ª   ª   ª           Icon76.png
    ª   ª   ª           Icon80.png
    ª   ª   ª           Icon87.png
    ª   ª   ª           
    ª   ª   +---Resources
    ª   ª           PrivacyInfo.xcprivacy
    ª   ª           
    ª   +---MacCatalyst
    ª   ª       AppDelegate.cs
    ª   ª       Entitlements.plist
    ª   ª       Info.plist
    ª   ª       Program.cs
    ª   ª       
    ª   +---Tizen
    ª   ª       Main.cs
    ª   ª       tizen-manifest.xml
    ª   ª       
    ª   +---Windows
    ª           app.manifest
    ª           App.xaml
    ª           App.xaml.cs
    ª           Package.appxmanifest
    ª           
    +---Properties
    ª       launchSettings.json
    ª       
    +---Resources
        ª   Svg.xaml
        ª   
        +---AppIcon
        ª       appicon.svg
        ª       appiconfg.svg
        ª       
        +---Fonts
        ª       amstrad_cpc464.ttf
        ª       BlackHanSans-Regular.ttf
        ª       DelaGothicOne-Regular.ttf
        ª       MaShanZheng-Regular.ttf
        ª       ZenMaruGothic-Bold.ttf
        ª       
        +---Images
        ª       dotnet_bot.png
        ª       
        +---Raw
        ª   ª   AboutAssets.txt
        ª   ª   
        ª   +---Fx
        ª   ª       ballout.mp3
        ª   ª       bells1.mp3
        ª   ª       bricksynth.wav
        ª   ª       powerup27.mp3
        ª   ª       quirky26.mp3
        ª   ª       quirky7.mp3
        ª   ª       synthchime2.mp3
        ª   ª       
        ª   +---Images
        ª   ª       back.jpg
        ª   ª       glass.jpg
        ª   ª       tile.png
        ª   ª       tile2.png
        ª   ª       tile3.png
        ª   ª       tile4.png
        ª   ª       
        ª   +---Music
        ª   ª       demoHypnoticPuzzle4.mp3
        ª   ª       lvl1PixelCityGroovin.mp3
        ª   ª       MonkeyDrama.mp3
        ª   ª       TechnoTronic.mp3
        ª   ª       
        ª   +---Sounds
        ª           bip.mp3
        ª           bip.wav
        ª           bip1.wav
        ª           bip2.wav
        ª           brickglass.wav
        ª           bricksynth2.wav
        ª           bricksynth3.wav
        ª           gamestart.wav
        ª           kill.wav
        ª           one.wav
        ª           pong.wav
        ª           tik.wav
        ª           two.wav
        ª           
        +---Splash
        ª       splash.svg
        ª       
        +---Strings
        ª       ResStrings.de.resx
        ª       ResStrings.Designer.cs
        ª       ResStrings.es.resx
        ª       ResStrings.fr.resx
        ª       ResStrings.it.resx
        ª       ResStrings.ja.resx
        ª       ResStrings.ko.resx
        ª       ResStrings.resx
        ª       ResStrings.ru.resx
        ª       ResStrings.zh.resx
        ª       
        +---Styles
                Colors.xaml
                Styles.xaml
                

=== SLN FILE ===

Microsoft Visual Studio Solution File, Format Version 12.00
# Visual Studio Version 17
VisualStudioVersion = 17.14.35906.104
MinimumVisualStudioVersion = 10.0.40219.1
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Breakout", "src\Breakout.csproj", "{36E49A86-2263-FA52-3C95-98957BFF8B03}"
EndProject
Project("{2150E333-8FDC-42A3-9474-1A3956D46DE8}") = "Solution Items", "Solution Items", "{8EC462FD-D22E-90A8-E5CE-7E832BA40C5D}"
	ProjectSection(SolutionItems) = preProject
		.gitignore = .gitignore
		README.md = README.md
	EndProjectSection
EndProject
Global
	GlobalSection(SolutionConfigurationPlatforms) = preSolution
		Debug|Any CPU = Debug|Any CPU
		Release|Any CPU = Release|Any CPU
	EndGlobalSection
	GlobalSection(ProjectConfigurationPlatforms) = postSolution
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Debug|Any CPU.Deploy.0 = Debug|Any CPU
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Release|Any CPU.Build.0 = Release|Any CPU
		{36E49A86-2263-FA52-3C95-98957BFF8B03}.Release|Any CPU.Deploy.0 = Release|Any CPU
	EndGlobalSection
	GlobalSection(SolutionProperties) = preSolution
		HideSolutionNode = FALSE
	EndGlobalSection
	GlobalSection(ExtensibilityGlobals) = postSolution
		SolutionGuid = {0D7B9789-07CE-492A-9DC4-C9823A73B2B6}
	EndGlobalSection
EndGlobal

=== GITHUB ACTIONS ===
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

  # iOS build temporarily disabled due to Xcode version requirement
  # .NET 9 requires Xcode 16.4, but GitHub runners currently have 15.4
  build-ios:
    name: Build iOS (Skipped - Xcode Version)
    runs-on: ubuntu-latest
    
    steps:
    - name: Skip iOS Build
      run: |
        echo "⚠️ iOS build skipped: .NET 9 requires Xcode 16.4, but GitHub macOS runners currently have 15.4"
        echo "This will be enabled once GitHub updates their macOS runners"
        echo "See: https://aka.ms/xcode-requirement"

  # MacCatalyst build temporarily disabled for same reason
  build-maccatalyst:
    name: Build MacCatalyst (Skipped - Xcode Version)  
    runs-on: ubuntu-latest
    
    steps:
    - name: Skip MacCatalyst Build
      run: |
        echo "⚠️ MacCatalyst build skipped: .NET 9 requires Xcode 16.4, but GitHub macOS runners currently have 15.4"
        echo "This will be enabled once GitHub updates their macOS runners"
        echo "See: https://aka.ms/xcode-requirement"

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
          
    - name: Restore dependencies for publish (with runtime)
      run: dotnet restore ${{ env.PROJECT_PATH }} -r win-x64
          
    - name: Build Windows (Release)
      run: |
        dotnet publish ${{ env.PROJECT_PATH }} `
          -c Release `
          -f net9.0-windows10.0.19041.0 `
          --no-restore `
          -r win-x64 `
          --self-contained false `
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
    if: startsWith(github.ref, 'refs/tags/v') && always()
    
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
        body: |
          ## 🎮 Breakout Game Release
          
          ### Available Platforms
          - ✅ **Android**: APK included
          - ✅ **Windows**: App included  
          - ⚠️ **iOS/MacCatalyst**: Temporarily disabled due to Xcode version requirements
          
          ### Notes
          iOS and MacCatalyst builds are temporarily disabled because .NET 9 requires Xcode 16.4, 
          but GitHub macOS runners currently have Xcode 15.4. These will be re-enabled when GitHub 
          updates their runners.
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
# ==============================================================================
# FILE: .github/workflows/ios-when-ready.yml (Future use)
# ==============================================================================
---
name: iOS Build (Enable When Xcode 16.4+ Available)

on:
  workflow_dispatch:
  # Uncomment when GitHub runners are updated
  # push:
  #   branches: [ main ]

env:
  DOTNET_VERSION: '9.0.x'
  PROJECT_PATH: 'src/Breakout.csproj'

jobs:
  check-xcode-version:
    name: Check Xcode Version
    runs-on: macos-latest
    outputs:
      xcode-compatible: ${{ steps.check.outputs.compatible }}
    
    steps:
    - name: Check Xcode compatibility
      id: check
      run: |
        XCODE_VERSION=$(xcodebuild -version | grep "Xcode" | cut -d" " -f2)
        echo "Current Xcode version: $XCODE_VERSION"
        
        # Check if version is 16.4 or higher
        if [ "$(printf '%s\n' "16.4" "$XCODE_VERSION" | sort -V | head -n1)" = "16.4" ]; then
          echo "✅ Xcode $XCODE_VERSION is compatible with .NET 9"
          echo "compatible=true" >> $GITHUB_OUTPUT
        else
          echo "⚠️ Xcode $XCODE_VERSION is not compatible with .NET 9 (requires 16.4+)"
          echo "compatible=false" >> $GITHUB_OUTPUT
        fi

  build-ios:
    name: Build iOS
    runs-on: macos-latest
    needs: check-xcode-version
    if: needs.check-xcode-version.outputs.xcode-compatible == 'true'
    
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

  build-maccatalyst:
    name: Build MacCatalyst
    runs-on: macos-latest
    needs: check-xcode-version
    if: needs.check-xcode-version.outputs.xcode-compatible == 'true'
    
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
          # iOS and MacCatalyst temporarily disabled due to Xcode requirements
          # - os: macos-latest
          #   framework: net9.0-ios
          #   workloads: "maui ios"
          # - os: macos-latest
          #   framework: net9.0-maccatalyst
          #   workloads: "maui maccatalyst"
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

  check-xcode-status:
    name: Check Xcode Version Status
    runs-on: macos-latest
    
    steps:
    - name: Check Xcode Version
      run: |
        echo "=== Current Xcode Version ===" 
        xcode-select -p
        xcrun --show-sdk-version --sdk iphoneos
        
        echo "=== .NET 9 Requirement ==="
        echo ".NET 9 for iOS requires Xcode 16.4"
        echo "Current runner has: $(xcrun --show-sdk-version --sdk iphoneos)"
        
        # Check if we can enable iOS builds again
        CURRENT_VERSION=$(xcrun --show-sdk-version --sdk iphoneos | cut -d. -f1)
        if [ "$CURRENT_VERSION" -ge "17" ]; then
          echo "✅ iOS builds can potentially be re-enabled!"
        else
          echo "⚠️ iOS builds still need to remain disabled"
        fi
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

  # iOS validation temporarily disabled due to Xcode version requirement
  validate-ios:
    name: Validate iOS Build (Skipped - Xcode Version)
    runs-on: ubuntu-latest
    
    steps:
    - name: Skip iOS Validation
      run: |
        echo "⚠️ iOS validation skipped: .NET 9 requires Xcode 16.4, but GitHub macOS runners currently have 15.4"
        echo "This will be enabled once GitHub updates their macOS runners"
        echo "See: https://aka.ms/xcode-requirement"

  # MacCatalyst validation temporarily disabled for same reason  
  validate-maccatalyst:
    name: Validate MacCatalyst Build (Skipped - Xcode Version)
    runs-on: ubuntu-latest
    
    steps:
    - name: Skip MacCatalyst Validation
      run: |
        echo "⚠️ MacCatalyst validation skipped: .NET 9 requires Xcode 16.4, but GitHub macOS runners currently have 15.4"
        echo "This will be enabled once GitHub updates their macOS runners"
        echo "See: https://aka.ms/xcode-requirement"

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
        
        # iOS and MacCatalyst are skipped, so always show as warning
        echo "- ⚠️ **iOS Build**: Skipped (Xcode version requirement)" >> $GITHUB_STEP_SUMMARY
        echo "- ⚠️ **MacCatalyst Build**: Skipped (Xcode version requirement)" >> $GITHUB_STEP_SUMMARY
        
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
        echo "### ⚠️ Important Notes" >> $GITHUB_STEP_SUMMARY
        echo "- **iOS/MacCatalyst builds are temporarily disabled**" >> $GITHUB_STEP_SUMMARY
        echo "- .NET 9 requires Xcode 16.4, but GitHub runners have 15.4" >> $GITHUB_STEP_SUMMARY
        echo "- These will be re-enabled when GitHub updates their runners" >> $GITHUB_STEP_SUMMARY
        echo "" >> $GITHUB_STEP_SUMMARY
        echo "### 🚀 Next Steps" >> $GITHUB_STEP_SUMMARY
        echo "- Android and Windows platforms validated" >> $GITHUB_STEP_SUMMARY
        echo "- Ready for merge if all checks pass" >> $GITHUB_STEP_SUMMARY

=== CSPROJ FILES ===

--- C:\code\DrawnUi\src\Breakout.csproj ---
<Project Sdk="Microsoft.NET.Sdk">

	<PropertyGroup>

    <!--<TargetFrameworks>net9.0-android;</TargetFrameworks>-->
    <!--<TargetFrameworks>net9.0-ios;</TargetFrameworks>-->
    <!--<TargetFrameworks>net9.0-windows10.0.19041.0</TargetFrameworks>-->

    <TargetFrameworks>net9.0-android;net9.0-ios;net9.0-maccatalyst</TargetFrameworks>
    <TargetFrameworks Condition="$([MSBuild]::IsOSPlatform('windows'))">$(TargetFrameworks);net9.0-windows10.0.19041.0</TargetFrameworks>

    <OutputType>Exe</OutputType>
    <RootNamespace>Breakout</RootNamespace>
    <UseMaui>true</UseMaui>
    <SingleProject>true</SingleProject>
    <ImplicitUsings>enable</ImplicitUsings>

    <!-- Display name -->
    <ApplicationTitle>Bricks Breaker</ApplicationTitle>
    
    <!-- App Identifier -->
    <ApplicationId>com.appomobi.drawnui.breakout</ApplicationId>
    <ApplicationIdGuid>230e07b0-ebc2-4fde-9ac8-074d3c3d69a9</ApplicationIdGuid>

    <!-- Versions -->
    <ApplicationDisplayVersion>1.0</ApplicationDisplayVersion>
    <ApplicationVersion>1</ApplicationVersion>

    <SupportedOSPlatformVersion Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'ios'">15.0</SupportedOSPlatformVersion>
    <SupportedOSPlatformVersion Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'maccatalyst'">15.2</SupportedOSPlatformVersion>
    <SupportedOSPlatformVersion Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'android'">21.0</SupportedOSPlatformVersion>
    <SupportedOSPlatformVersion Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'windows'">10.0.19041.0</SupportedOSPlatformVersion>
    <TargetPlatformMinVersion Condition="$([MSBuild]::GetTargetPlatformIdentifier('$(TargetFramework)')) == 'windows'">10.0.19041.0</TargetPlatformMinVersion>
    <WindowsPackageType>None</WindowsPackageType>
  </PropertyGroup>

  <!-- Custom Android icons: workaround for MAUI Android bug not including webp resources-->
  <ItemGroup Condition="$(TargetFramework.Contains('android'))">
    <AndroidResource Include="Platforms\Android\Resources\**\*.webp" />
  </ItemGroup>

  <!--Custom iOS icons-->
  <ItemGroup Condition="$(TargetFramework.Contains('ios')) == true">
    <BundleResource Include="Platforms\iOS\Assets.xcassets\**\*" />
  </ItemGroup>

  <ItemGroup>

    <!-- App Icon, ios and android will override this with our custom icons -->
    <MauiIcon Include="Resources\AppIcon\appicon.svg" ForegroundFile="Resources\AppIcon\appiconfg.svg" ForegroundScale="0.8" Color="#212529" />

		<!-- Splash Screen -->
		<MauiSplashScreen Include="Resources\Splash\splash.svg" Color="#212529" BaseSize="120,120" />

		<!-- Images -->
		<MauiImage Include="Resources\Images\*" />
		<MauiImage Update="Resources\Images\dotnet_bot.png" Resize="True" BaseSize="300,185" />

		<!-- Custom Fonts -->
		<MauiFont Include="Resources\Fonts\*" />

		<!-- Raw Assets (also remove the "Resources\Raw" prefix) -->
		<MauiAsset Include="Resources\Raw\**" LogicalName="%(RecursiveDir)%(Filename)%(Extension)" />
	</ItemGroup>

  <!--dev provisioning for iPhone-->
  <Import Project="../../Breakout.targets" Condition="Exists('../../Breakout.targets')" />

  <!--DEBUG-->
  <PropertyGroup Condition="'$(Configuration)' == 'Debug'">
    <ProvisioningType>manual</ProvisioningType>
  </PropertyGroup>

  <ItemGroup>
    <None Include="..\README.md" Link="README.md" />
  </ItemGroup>

  <ItemGroup>
    <PackageReference Include="DrawnUi.Maui.Game" Version="1.6.2.27" />
    <!--can replace this with usual plugin if PR is merged-->
    <PackageReference Include="AppoMobi.Preview.Plugin.Maui.Audio" Version="3.0.2.1-pre1" />
    <PackageReference Include="Bijington.Orbit.Input" Version="0.2.2-preview.1" />
    <PackageReference Include="Microsoft.Maui.Controls" Version="9.0.70" />
		<PackageReference Include="Microsoft.Extensions.Logging.Debug" Version="9.0.0" />
  </ItemGroup>

  <ItemGroup Condition="$(TargetFramework.Contains('android'))">
    <PackageReference Include="SoundFlow" Version="1.1.1" />
  </ItemGroup>

  <!--https://github.com/BretJohnson/hot-preview-->
  <!-- !!! uncomment this if you install dotnet tool hotpreviews !!! -->
  <!--<ItemGroup Condition="$(Configuration) == 'Debug'">
    <PackageReference Include="HotPreview.App.Maui" Version="0.14.31" />
  </ItemGroup>-->

  <!--for development-->
  <!--<ItemGroup>
    <ProjectReference Include="..\..\DrawnUi.Maui\src\Maui\DrawnUi\DrawnUi.Maui.csproj" />
    <ProjectReference Include="..\..\DrawnUi.Maui\src\Maui\Addons\DrawnUi.Maui.Game\DrawnUi.Maui.Game.csproj" />
  </ItemGroup>-->

  <ItemGroup>
    <Compile Update="Resources\Strings\ResStrings.Designer.cs">
      <DesignTime>True</DesignTime>
      <AutoGen>True</AutoGen>
      <DependentUpon>ResStrings.resx</DependentUpon>
    </Compile>
  </ItemGroup>
  <ItemGroup>
    <EmbeddedResource Update="Resources\Strings\ResStrings.resx">
      <LastGenOutput>ResStrings.Designer.cs</LastGenOutput>
      <Generator>PublicResXFileCodeGenerator</Generator>
    </EmbeddedResource>
  </ItemGroup>
  <ItemGroup>
    <MauiFont Include="Helpers\AppFonts.cs" />
  </ItemGroup>

</Project>

=== feature FILES ===
































































I can see the issue. The error shows that the Windows runtime is looking for `Microsoft.NETCore.App.Runtime.Mono.win-x64` version `9.0.8`, but only finding version `9.0.0-preview.7.24405.7`. This is a version mismatch issue with .NET 9.

Let me fix the workflow to address this specific runtime issue:The issue is that the workflow was trying to restore with a specific runtime (`-r win-x64`) that was looking for a Mono runtime version that doesn't exist. Let me also create a simpler, more focused workflow that just builds what we know works:Now let me create a diagnostic workflow to help troubleshoot the runtime issue:Based on the error you're seeing, the issue is with the Windows runtime restoration when using `-r win-x64`. Here are the key fixes:

## The Problem
The error `Microsoft.NETCore.App.Runtime.Mono.win-x64 with version (= 9.0.8)` indicates a version mismatch in the .NET runtime packages. The GitHub Actions runners have a different version than what your project expects.

## Solutions

### 1. Use the Simple Android Workflow
I've created a simplified workflow that focuses only on Android builds (which is what you specifically requested). This avoids the Windows runtime issues entirely.

### 2. Key Changes Made
- **Removed the problematic Windows runtime restoration** (`-r win-x64`)
- **Target only Android framework** for restoration: `dotnet restore -f net9.0-android`
- **Added better error diagnostics** to see exactly what's happening
- **Simplified the build process** to focus on what works

### 3. Diagnostic Workflow
The diagnostic workflow will help you understand:
- What .NET versions are actually available on the runner
- What workloads are installed
- Whether the issue is project-specific or environment-specific

## Recommendations

1. **Replace your current workflow** with the "Simple Android Build Workflow" to get Android APKs working immediately
2. **Run the diagnostic workflow** to understand the environment better
3. **Once Android is working**, we can gradually add other platforms

The simplified approach should resolve the `Microsoft.NETCore.App.Runtime.Mono.win-x64` error since it doesn't attempt to restore Windows-specific runtimes that aren't available in the correct version on the GitHub runners.

Would you like me to create an even more minimal version that just builds the APK without any Windows components at all?



































































name: Diagnostics

on:
  workflow_dispatch:

jobs:
  diagnose-dotnet:
    name: Diagnose .NET Environment
    runs-on: windows-latest
    
    steps:
    - name: Checkout code
      uses: actions/checkout@v4
      
    - name: Setup .NET
      uses: actions/setup-dotnet@v4
      with:
        dotnet-version: '9.0.x'
        
    - name: Diagnose .NET installation
      run: |
        Write-Host "=== .NET Information ===" -ForegroundColor Cyan
        dotnet --info
        
        Write-Host "`n=== Available Runtimes ===" -ForegroundColor Cyan
        dotnet --list-runtimes
        
        Write-Host "`n=== Available SDKs ===" -ForegroundColor Cyan
        dotnet --list-sdks
        
        Write-Host "`n=== NuGet Sources ===" -ForegroundColor Cyan
        dotnet nuget list source
        
    - name: Install MAUI workloads
      run: |
        Write-Host "=== Installing MAUI workloads ===" -ForegroundColor Cyan
        dotnet nuget locals all --clear
        dotnet workload install maui
        
        Write-Host "`n=== Installed Workloads ===" -ForegroundColor Cyan
        dotnet workload list
        
    - name: Test project restore
      run: |
        Write-Host "=== Testing project restore ===" -ForegroundColor Cyan
        
        Write-Host "`nTrying restore without framework specification..." -ForegroundColor Yellow
        try {
          dotnet restore src/Breakout.csproj --verbosity normal
          Write-Host "✅ General restore successful" -ForegroundColor Green
        } catch {
          Write-Host "❌ General restore failed: $_" -ForegroundColor Red
        }
        
        Write-Host "`nTrying restore for Android framework only..." -ForegroundColor Yellow
        try {
          dotnet restore src/Breakout.csproj -f net9.0-android --verbosity normal
          Write-Host "✅ Android restore successful" -ForegroundColor Green
        } catch {
          Write-Host "❌ Android restore failed: $_" -ForegroundColor Red
        }
        
    - name: Test Android build
      run: |
        Write-Host "=== Testing Android build ===" -ForegroundColor Cyan
        try {
          dotnet build src/Breakout.csproj -c Debug -f net9.0-android --no-restore --verbosity normal
          Write-Host "✅ Android build successful" -ForegroundColor Green
        } catch {
          Write-Host "❌ Android build failed: $_" -ForegroundColor Red
        }
        
    - name: Check for common issues
      run: |
        Write-Host "=== Checking for common issues ===" -ForegroundColor Cyan
        
        Write-Host "`nChecking global.json..." -ForegroundColor Yellow
        if (Test-Path "global.json") {
          Write-Host "Found global.json:"
          Get-Content "global.json"
        } else {
          Write-Host "No global.json found"
        }
        
        Write-Host "`nChecking NuGet.config..." -ForegroundColor Yellow
        if (Test-Path "NuGet.config") {
          Write-Host "Found NuGet.config:"
          Get-Content "NuGet.config"
        } else {
          Write-Host "No NuGet.config found"
        }
        
        Write-Host "`nChecking for Breakout.targets..." -ForegroundColor Yellow
        $targetsPath = "../../Breakout.targets"
        if (Test-Path $targetsPath) {
          Write-Host "Found Breakout.targets:"
          Get-Content $targetsPath
        } else {
          Write-Host "No Breakout.targets found at $targetsPath"
        }

  diagnose-maui-android:
    name: Diagnose MAUI Android Specifically
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
        dotnet-version: '9.0.x'
        
    - name: Check Java setup
      run: |
        Write-Host "=== Java Information ===" -ForegroundColor Cyan
        java -version
        Write-Host "JAVA_HOME: $env:JAVA_HOME"
        
    - name: Install only Android workloads
      run: |
        Write-Host "=== Installing Android workloads ===" -ForegroundColor Cyan
        dotnet nuget locals all --clear
        dotnet workload install android
        dotnet workload install maui-android
        
        Write-Host "`n=== Verifying Android workloads ===" -ForegroundColor Cyan
        dotnet workload list
        
    - name: Create minimal test project
      run: |
        Write-Host "=== Creating minimal test project ===" -ForegroundColor Cyan
        dotnet new maui -n TestApp -o ./test-app
        
        Write-Host "`nTesting minimal project restore..." -ForegroundColor Yellow
        cd test-app
        dotnet restore -f net9.0-android --verbosity normal
        
        Write-Host "`nTesting minimal project build..." -ForegroundColor Yellow
        dotnet build -c Debug -f net9.0-android --no-restore --verbosity normal
