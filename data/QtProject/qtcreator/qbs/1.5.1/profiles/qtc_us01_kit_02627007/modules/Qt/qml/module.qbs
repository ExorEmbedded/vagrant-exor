import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Qml"
    Depends { name: "Qt"; submodules: ["core", "network"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.6.1", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Qml"
    libNameForLinkerRelease: "Qt5Qml"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Qml.so.5.6.1"
    cpp.defines: ["QT_QML_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit-wayland/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtQml"]
    cpp.libraryPaths: []
    
}
