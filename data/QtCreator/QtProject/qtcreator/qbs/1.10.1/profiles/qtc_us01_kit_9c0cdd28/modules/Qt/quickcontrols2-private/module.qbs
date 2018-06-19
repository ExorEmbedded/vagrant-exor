import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickControls2"
    Depends { name: "Qt"; submodules: ["quickcontrols2"]}

    architecture: "arm"
    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQuickControls2/5.9.4", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQuickControls2/5.9.4/QtQuickControls2"]
    cpp.libraryPaths: []
    
}
