import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Enginio"
    Depends { name: "Qt"; submodules: ["core-private", "enginio"]}

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
    cpp.includePaths: ["/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/Enginio/1.6.1", "/opt/exorintos/us01-kit-x11/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/include/qt5/Enginio/1.6.1/Enginio"]
    cpp.libraryPaths: []
    
}
