import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ServiceFramework"
    Depends { name: "Qt"; submodules: ["core"]}

    architecture: "arm"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5Core.so.5.9.4", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5ServiceFramework"
    libNameForLinkerRelease: "Qt5ServiceFramework"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/lib/libQt5ServiceFramework.so.5.4.0"
    cpp.defines: ["QT_SERVICEFRAMEWORK_LIB"]
    cpp.includePaths: ["/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5", "/opt/exorintos/us01-kit/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/QtServiceFramework"]
    cpp.libraryPaths: []
    
}
