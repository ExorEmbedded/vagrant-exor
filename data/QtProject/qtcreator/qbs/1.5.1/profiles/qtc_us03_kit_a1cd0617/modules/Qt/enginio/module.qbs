import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Enginio"
    Depends { name: "Qt"; submodules: ["core", "network"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Network.so.5.6.1", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.6.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Enginio"
    libNameForLinkerRelease: "Enginio"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib/libEnginio.so.1.6.1"
    cpp.defines: ["QT_ENGINIO_LIB"]
    cpp.includePaths: ["/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us03-kit/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/include/qt5/Enginio"]
    cpp.libraryPaths: []
    
}
