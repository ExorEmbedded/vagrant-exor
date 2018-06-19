import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "UiPlugin"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets"]}

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
    cpp.defines: ["QT_UIPLUGIN_LIB"]
    cpp.includePaths: ["/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5/QtUiPlugin"]
    cpp.libraryPaths: []
    
}
