import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebChannel"
    Depends { name: "Qt"; submodules: ["core", "qml"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Qml.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.9.2", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.2", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebChannel"
    libNameForLinkerRelease: "Qt5WebChannel"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/lib/libQt5WebChannel.so.5.9.2"
    cpp.defines: ["QT_WEBCHANNEL_LIB"]
    cpp.includePaths: ["/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/ns01-kit/sysroots/cortexa7hf-neon-poky-linux-gnueabi/usr/include/qt5/QtWebChannel"]
    cpp.libraryPaths: []
    
}
