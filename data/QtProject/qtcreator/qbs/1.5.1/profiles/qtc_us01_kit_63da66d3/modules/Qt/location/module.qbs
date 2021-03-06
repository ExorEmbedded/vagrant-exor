import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Location"
    Depends { name: "Qt"; submodules: ["core", "positioning", "gui", "quick"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Positioning.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Quick.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Gui.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Qml.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Location"
    libNameForLinkerRelease: "Qt5Location"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Location.so.5.6.1"
    cpp.defines: ["QT_LOCATION_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtLocation"]
    cpp.libraryPaths: []
    
}
