import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Script"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Script"
    libNameForLinkerRelease: "Qt5Script"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Script.so.5.6.1"
    cpp.defines: ["QT_SCRIPT_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtScript"]
    cpp.libraryPaths: []
    
}
