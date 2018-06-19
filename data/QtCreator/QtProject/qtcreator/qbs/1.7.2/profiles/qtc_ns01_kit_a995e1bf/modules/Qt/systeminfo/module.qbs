import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SystemInfo"
    Depends { name: "Qt"; submodules: ["core", "network", "dbus"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["udev", "X11", "bluetooth", "evdev", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5DBus.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.2", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5SystemInfo"
    libNameForLinkerRelease: "Qt5SystemInfo"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5SystemInfo.so.5.4.0"
    cpp.defines: ["QT_SYSTEMINFO_LIB"]
    cpp.includePaths: ["/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5/QtSystemInfo"]
    cpp.libraryPaths: []
    
}
